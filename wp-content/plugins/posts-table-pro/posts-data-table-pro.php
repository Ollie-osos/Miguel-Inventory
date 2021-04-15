<?php
/**
 * The main plugin file for Posts Table Pro.
 *
 * @package   Posts_Table_Pro
 * @author    Andrew Keith <andy@barn2.co.uk>
 * @license   GPL-2.0+
 * @link      http://barn2.co.uk
 * @copyright 2016 Barn2 Media
 *
 * @wordpress-plugin
 * Plugin Name:       Posts Table Pro
 * Description:       Provides a shortcode to show a list of your website content (posts, pages, custom post types, etc) in a searchable and sortable table.
 * Version:           1.3.1
 * Author:            Barn2 Media
 * Author URI:        http://barn2.co.uk
 * Text Domain:       posts-table-pro
 * Domain Path:       /languages
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 */

// Prevent direct file access
if ( ! defined ( 'ABSPATH' ) ) {
	exit;
}

// Current version of this plugin
define( 'POSTS_TABLE_PRO_VERSION', '1.3.1' );

// Includes directory
define( 'POSTS_TABLE_PRO_INCLUDES_DIR', plugin_dir_path( __FILE__ ) . 'includes/' );

require_once POSTS_TABLE_PRO_INCLUDES_DIR . 'posts-table-util.php';
require_once POSTS_TABLE_PRO_INCLUDES_DIR . 'class-html-data-table.php';
require_once POSTS_TABLE_PRO_INCLUDES_DIR . 'class-posts-data-table.php';
require_once POSTS_TABLE_PRO_INCLUDES_DIR . 'posts-table-cache.php';
require_once POSTS_TABLE_PRO_INCLUDES_DIR . 'class-posts-table-factory.php';
require_once POSTS_TABLE_PRO_INCLUDES_DIR . 'class-posts-table-shortcode.php';
require_once POSTS_TABLE_PRO_INCLUDES_DIR . 'class-posts-table-ajax-handler.php';
require_once POSTS_TABLE_PRO_INCLUDES_DIR . 'class-admin-posts-table-settings.php';
require_once POSTS_TABLE_PRO_INCLUDES_DIR . 'license/class-b2-plugin-license.php';

class Posts_Table_Pro_Plugin {
    
    public function __construct() {        
        // Load the text domain - should go on 'plugins_loaded' hook 
        add_action( 'plugins_loaded', array( $this, 'load_textdomain' ) );
        
		// Register styles and scripts
        add_action( 'wp_enqueue_scripts', array( $this, 'register_styles' ) );
        add_action( 'wp_enqueue_scripts', array( $this, 'register_scripts' ) );
        
        // Instantiate plugin updater / license checker
        $license = new Barn2_Plugin_License( 
                __FILE__, 
                'Posts Table Pro', // name of Download in EDD
                POSTS_TABLE_PRO_VERSION, 
                'ptp'
        );
        
        // Add our settings page
        new Admin_Posts_Table_Settings( $license );
        
        add_filter( 'plugin_action_links_' . plugin_basename( __FILE__ ), array( $this, 'add_plugin_settings_link' ) ); 
        
        // Initialize plugin if valid
        if ( $license->is_valid() ) {
            new Posts_Table_Shortcode();
            new Posts_Table_Ajax_Handler();
        }
    }
   
    public function load_textdomain() {
        load_plugin_textdomain( 'posts-table-pro', false, dirname( plugin_basename( __FILE__  ) ) . '/languages' );
    }
    
	public function register_styles() {
		wp_enqueue_style( 'jquery-data-tables', plugins_url( 'assets/css/datatables.min.css', __FILE__ ), array(), '1.10.12' );
		wp_enqueue_style( 'posts-table-pro', plugins_url( 'assets/css/posts-table-pro.min.css', __FILE__ ), array( 'jquery-data-tables' ), POSTS_TABLE_PRO_VERSION );        
    }
    
    public function register_scripts() {
        wp_enqueue_script( 'jquery-data-tables', plugins_url( 'assets/js/datatables.min.js', __FILE__ ), array( 'jquery' ), '1.10.12', true );
        wp_enqueue_script( 'posts-table-pro', plugins_url( 'assets/js/posts-table-pro.min.js', __FILE__ ), array( 'jquery-data-tables' ), POSTS_TABLE_PRO_VERSION, true );
        
        $script_obj = array(
            'ajax_url' => admin_url( 'admin-ajax.php' ),
            'ajax_nonce' => wp_create_nonce( 'posts-table' )
        );
        
        $locale = get_locale();
        $supported_locales = $this->get_supported_locales();
        
        // Add language file to script if locale is supported (English file is not added as this is the default language)
        if ( array_key_exists( $locale, $supported_locales ) ) {
            $script_obj['lang_url'] = $supported_locales[$locale];
        }
        
        wp_localize_script( 'posts-table-pro', 'posts_table_params', $script_obj );
    }
    
    public function add_plugin_settings_link( $links ) {
        
        $settings_link = '<a href="'. admin_url( 'options-general.php?page=posts_table' ) . '">' . __( 'Settings', 'posts-table-pro' ) . '</a>';
        
        array_unshift( $links, $settings_link );
        return $links;
    } 
    
    /**
     * Returns an array of locales supported by the plugin. 
     * The array returned uses the locale as the array key mapped to the URL of the corresponding translation file.
     * 
     * @return array The supported locales
     */
    private function get_supported_locales() {
        $lang_file_base_url = plugins_url( 'languages/data-tables/', __FILE__ );
                
        return apply_filters( 'posts_table_supported_languages', array(
            'es_ES' => $lang_file_base_url . 'Spanish.json', 
            'fr_FR' => $lang_file_base_url . 'French.json',
            'fr_CA' => $lang_file_base_url . 'French.json',
            'fr_BE' => $lang_file_base_url . 'French.json',
            'de_DE' => $lang_file_base_url . 'German.json',
            'de_CH' => $lang_file_base_url . 'German.json',
            'nb_NO' => $lang_file_base_url . 'Norwegian-Bokmal.json',
            'nl_NL' => $lang_file_base_url . 'Dutch.json',
        ) );
    }
    
} // end class Posts_Table_Plugin 

$posts_table = new Posts_Table_Pro_Plugin();