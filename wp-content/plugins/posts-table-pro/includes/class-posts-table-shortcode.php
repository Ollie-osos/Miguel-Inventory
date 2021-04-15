<?php
/**
 * This class handles our shortcode registration.
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

/**
 * Example usage:
 *   [posts_data_table 
 *       post_type="band" 
 *       columns="title,content,tax:country,tax:genre,cf:_price,cf:stock" 
 *       category="design",
 *       tag="cool",
 *       term="country:uk,artist:beatles" 
 *       cf="price:200"]
 */
class Posts_Table_Shortcode {

    private $shortcode = 'posts_table';
       
    public function __construct() {        
        // Register shortcodes
        add_shortcode( $this->shortcode, array( $this, 'do_shortcode' ) );
        // Back-compat with free version of plugin
        add_shortcode( 'posts_data_table', array( $this, 'do_shortcode' ) );
    }
    
    /**
     * Handles our posts data table shortcode.
     * 
     * @param array $atts The attributes passed in to the shortcode
     * @param string $content The content passed to the shortcode (not used)
     * @return string The shortcode output
     */
    public function do_shortcode( $atts, $content = '' ) {
        
        // Create the table
        $table = Posts_Table_Factory::create( shortcode_atts( Posts_Data_Table::$default_args, $atts, $this->shortcode ) );
 
        // Return the table as HTML
        return $table->get_table()->to_html();
    }
    
} // class Posts_Data_Table_Shortcode
