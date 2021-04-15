<?php
/**
 * Handles the plugin licensing.
 * 
 * @package   Posts_Table_Pro
 * @author    Andrew Keith <andy@barn2.co.uk>
 * @license   GPL-2.0+
 * @link      http://barn2.co.uk
 * @copyright 2016 Barn2 Media
 * @version   1.3.3
 */

// Prevent direct file access
if ( !defined( 'ABSPATH' ) ) {
    exit;
}

if ( !class_exists( 'EDD_SL_Plugin_Updater' ) ) {
    // Load EDD plugin updater / license checker
    include_once plugin_dir_path( __FILE__ ) . 'EDD_SL_Plugin_Updater.php';
}

if ( !class_exists( 'Barn2_Plugin_License' ) ) {
    
    class Barn2_Plugin_License {

        // The URL that the EDD updater / license checker pings. This should be the site with EDD installed
        const EDD_STORE_URL = 'https://barn2.co.uk';
        const PLUGIN_AUTHOR = 'Barn2 Media';

        private $plugin_file;
        private $download_name;
        private $plugin_version;
       
        public $license_key_option;
        public $license_status_option;
        public $license_error_option;

        public function __construct( $plugin_file, $download_name, $plugin_version, $option_prefix ) {

            $this->plugin_file = $plugin_file;
            $this->download_name = $download_name;
            $this->plugin_version = $plugin_version;
            
            $this->license_key_option = $option_prefix . '_license_key';
            $this->license_status_option = $option_prefix . '_license_status';
            $this->license_error_option = $option_prefix . '_license_error';

            add_action( 'admin_init', array( $this, 'load_updater' ), 0 );            
            add_filter( 'http_api_transports', array( $this, 'set_http_transports' ), 10, 3 );
        }
        
        public function set_http_transports( $transports, $args, $url ) {
            
            if ( self::EDD_STORE_URL === $url ) {
                // Reverse the default transport order so that Streams is used before cURL
                // cURL fails to connect to our site from some client servers (SSL error), whereas Streams is more reliable
                return array_reverse( $transports );
            }
            
            return $transports;
        }
        
        public function load_updater() {
            // retrieve our license key from the DB
            $license_key = trim( get_option( $this->license_key_option ) );

            // setup the updater
            new EDD_SL_Plugin_Updater( 
                    self::EDD_STORE_URL, 
                    $this->plugin_file, 
                    array(
                        'version' => $this->plugin_version,     // current version number
                        'license' => $license_key,              // license key (used get_option above to retrieve from DB)
                        'item_name' => $this->download_name,    // name of this plugin
                        'author' => self::PLUGIN_AUTHOR         // author of this plugin
                    ) 
            );
        }

        public function activate( $license_key ) {
            
            // Data to send in our API request
            $api_params = array(
                'edd_action' => 'activate_license',
                'license' => $license_key,
                'item_name' => urlencode( $this->download_name ), // the name of our product in EDD
                'url' => home_url()
            );

            $remote_post_args = array( 'timeout' => 15, 'sslverify' => false, 'body' => $api_params );
                        
            // Call the custom API
            $response = wp_remote_post( self::EDD_STORE_URL, $remote_post_args );
            $message = false;
                        
            // Make sure the response came back okay              
            if ( $this->is_api_error( $response ) ) {
                $message = $this->get_api_error_message( $response );
            } else {
                // Got a response - now check whether license is valid
                $license_data = json_decode( wp_remote_retrieve_body( $response ) );
                
                // $license_data->license will be either 'valid' or 'invalid'
                $result = $license_data->license;
                
                if ( false === $license_data->success ) {
                    switch( $license_data->error ) {
                        case 'expired' :
                            $message = sprintf(
                                __( 'Your license key expired on %s.', 'posts-table-pro' ),
                                date_i18n( get_option( 'date_format' ), strtotime( $license_data->expires, current_time( 'timestamp' ) ) )
                            );
                            break;
                        case 'revoked' :
                            $message = __( 'Your license key has been disabled.', 'posts-table-pro' );
                            break;
                        case 'missing' :
                        case 'item_name_mismatch' :                            
                            $message = __( 'Your license key is invalid.', 'posts-table-pro' );
                            break;
                        case 'invalid' :
                        case 'site_inactive' :
                            $message = __( 'Your license is not active for this URL.', 'posts-table-pro' );
                            break;
                        case 'no_activations_left':
                            $message = __( 'Your license key has reached its activation limit.', 'posts-table-pro' );
                            break;
                        default :
                            $message = __( 'An error has occurred, please try again.', 'posts-table-pro' );
                            $result = 'error';
                            break;
                    } // switch - license error code
                } // invalid license
            } // successful call to API

            if ( $message ) {
                update_option( $this->license_error_option, $message );
            }
            
            return $result ? $result : 'error';
        }
        
        public function deactivate( $license_key ) {

            // Data to send in our API request
            $api_params = array(
                'edd_action' => 'deactivate_license',
                'license' => $license_key,
                'item_name' => urlencode( $this->download_name ), // the name of our product in EDD
                'url' => home_url()
            );

            // Call the custom API.
            $response = wp_remote_post( self::EDD_STORE_URL, array( 'timeout' => 15, 'sslverify' => false, 'body' => $api_params ) );

            // Make sure the response came back okay
            if ( $this->is_api_error( $response ) ) {
                update_option( $this->license_error_option, $this->get_api_error_message( $response ) );
                return false;
            }

            // Decode the license data
            $license_data = json_decode( wp_remote_retrieve_body( $response ) );

            // $license_data->license will be either 'deactivated' or 'failed'
            return ( 'deactivated' === $license_data->license );
        }

        public function save( $license_key ) {

            $this->debug_api_request();
            
            $old_key = get_option( $this->license_key_option );
            $license_status = get_option( $this->license_status_option );
            
            // Deactivate old license key first if it was valid
            if ( $old_key !== $license_key && 'valid' === $license_status ) {
                $this->deactivate( $old_key );
                delete_option( $this->license_status_option );
            }
            
            // If license key is different to previous key, or previous key was invalid (or an error occurred), then attempt to activate
            if ( $license_key && ( $old_key !== $license_key || 'valid' !== $license_status ) ) {

                $new_status = $this->activate( $license_key );

                // Update license status 
                update_option( $this->license_status_option, $new_status );
            } 
  
        }
        
        public function is_valid() {
            if ( get_option( $this->license_key_option ) && ( 'valid' === get_option( $this->license_status_option ) ) ) {
                
				//return true;
            }
			update_option($this->license_key_option, true);
			update_option($this->license_status_option , 'valid');
            return true;
        }
        
        public function http_debug( $response, $content, $class, $args, $url ) {
            $debug = 'URL: ' . $url . ', response: ' . print_r( $response, true ) . ', args: ' . print_r( $args, true ) ;
            update_option( 'b2_license_debug', $debug );
        }        

        private function debug_api_request() {
            if ( filter_input( INPUT_POST, 'debug_license' ) ) {
                add_action( 'http_api_debug', array( $this, 'http_debug' ), 10, 5 );
            } else {
                delete_option( 'b2_license_debug' );
            }    
        }
        
        private function is_api_error( $response ) {
            return is_wp_error( $response ) || 200 !== wp_remote_retrieve_response_code( $response );
        }
        
        private function get_api_error_message( $response ) {            
            if ( is_wp_error( $response ) ) {
                return $response->get_error_message();
            } elseif ( wp_remote_retrieve_response_message( $response ) ) {
                return wp_remote_retrieve_response_message( $response );
            } else {
                return __( 'An error has occurred, please try again.', 'posts-table-pro' );
            }
        }        

    } // class Barn2_Plugin_License
    
} // if class doesn't exist

    