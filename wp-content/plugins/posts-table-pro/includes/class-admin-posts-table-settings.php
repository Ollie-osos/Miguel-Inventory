<?php
/**
 * This class handles our plugin settings page in the admin.
 * 
 * @package   Posts_Table_Pro
 * @author    Andrew Keith <andy@barn2.co.uk>
 * @license   GPL-2.0+
 * @link      http://barn2.co.uk
 * @copyright 2016 Barn2 Media
 */

// Prevent direct file access
if ( ! defined ( 'ABSPATH' ) ) {
	exit;
}

class Admin_Posts_Table_Settings {
    
    // Our B2_Plugin_License instance
    private $license;
    
    private $menu_slug = 'posts_table';
    private $option_group = 'posts_table_pro';
    
    public function __construct( $license ) {
        $this->license = $license;
                
        add_action( 'admin_menu', array( $this, 'add_settings_page' ) );
        add_action( 'admin_init', array( $this, 'register_settings' ) );
    }
    
    public function add_settings_page() {
        add_options_page( 
                __( 'Posts Table Pro Settings', 'posts-table-pro' ), 
                __( 'Posts Table Pro', 'posts-table-pro' ), 
                'manage_options', 
                $this->menu_slug, 
                array( $this, 'render_settings_page' ) 
        );
    }    
    
    public function render_settings_page() {
        ?>
        <div class="wrap">
            <h1><?php _e( 'Posts Table Pro Settings', 'posts-table-pro' ); ?></h1>
            <?php ?>
            <form action="options.php" method="post">
                <?php settings_fields( $this->option_group ); ?>
                <?php do_settings_sections( $this->menu_slug ); ?>
                <?php if ( filter_input( INPUT_GET, 'debug_license' ) ) : ?>
                    <input type="hidden" name="debug_license" value="1" />
                <?php endif; ?>
                <p class="submit">
                    <input name="Submit" type="submit" name="submit" class="button button-primary" value="<?php esc_attr_e('Save Changes'); ?>" />
                </p>
            </form>
        </div>
        <?php
    }
    
    public function register_settings() {
        register_setting( $this->option_group, $this->license->license_key_option, array( $this, 'save_license_key' ) );
        add_settings_section( 'posts_table_main', false, '__return_false', $this->menu_slug );
        add_settings_field( 'license_key', __( 'License Key', 'posts-table-pro' ), array( $this, 'license_key_setting' ), $this->menu_slug, 'posts_table_main' );
    }
    
    public function save_license_key( $value ) {
        $license_key = filter_var( $value, FILTER_SANITIZE_STRING );
        $this->license->save( $license_key );
        
        return $license_key;
    }   
    
    public function license_key_setting() {
        $license_key = get_option( $this->license->license_key_option );
        $license_status = get_option ( $this->license->license_status_option );
        $license_error = get_option( $this->license->license_error_option );
        
        $key_desc = __( 'The license key is contained in your order confirmation email.', 'posts-table-pro' );
        
        if ( $this->license->is_valid() ) {
            $key_desc = __( 'License key successfully activated!', 'posts-table-pro' );
        } elseif ( 'error' === $license_status || 'invalid' === $license_status ) {
            $key_desc = $license_error ? sprintf( __( 'Error: %s', 'posts-table-pro' ), $license_error ) : __( 'There was an error saving your license key, please try again.', 'posts-table-pro' );
            $key_desc = sprintf( '<span style="color:red;">%s</span>', $key_desc );
        }
        
        if ( $license_debug = get_option( 'b2_license_debug' ) ) {
            $key_desc .= ' ' . $license_debug;
        }
        ?>
            <input id="ptp_license_key" name="<?php echo esc_attr( $this->license->license_key_option ); ?>" class="regular-text" type="text" value="<?php echo esc_attr( $license_key ); ?>" />
            <p class="description"><?php echo $key_desc; ?></p>
        <?php
    }
}
