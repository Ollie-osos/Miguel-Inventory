<?php
/**
 * Handles the AJAX requests for posts tables that have AJAX enabled.
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

final class Posts_Table_Ajax_Handler {
    
    public function __construct() {
        add_action( 'wp_ajax_nopriv_posts_table_load_data', array( $this, 'load_posts' ) );
        add_action( 'wp_ajax_posts_table_load_data', array( $this, 'load_posts' ) );
    }
    
    public function load_posts() {
        
        // Check we've got a valid AJAX request
        if ( 'POST' !== $_SERVER['REQUEST_METHOD'] ) { exit; }    
        check_ajax_referer( 'posts-table' );
        
        $table_id = filter_input( INPUT_POST, 'table_id', FILTER_SANITIZE_STRING );
        if ( !$table_id ) { exit; }
        
        $table = Posts_Table_Factory::get( $table_id );

        // Build the args to update
        $new_args = array();
        $new_args['rows_per_page'] = filter_input( INPUT_POST, 'length', FILTER_VALIDATE_INT );
        $new_args['post_offset'] = filter_input( INPUT_POST, 'start', FILTER_VALIDATE_INT );
       
        if ( isset( $_POST['order'][0]['column'] ) ) {
            $order = filter_var( $_POST['order'][0]['column'], FILTER_VALIDATE_INT );
            
            if ( false !== $order && isset( $_POST['columns'][$order]['data'] ) ) {
                $new_args['sort_by'] = filter_var( $_POST['columns'][$order]['data'], FILTER_SANITIZE_STRING );
            }          
            if ( !empty( $_POST['order'][0]['dir'] ) ) {
                $new_args['sort_order'] = filter_var( $_POST['order'][0]['dir'], FILTER_SANITIZE_STRING );
            }
        }
        
        $new_args['search_term'] = '';
        if ( !empty( $_POST['search']['value'] ) ) {
            $search_term = filter_var( $_POST['search']['value'], FILTER_SANITIZE_STRING );
            
            if ( strlen( $search_term ) > 2 ) {
                $new_args['search_term'] = $search_term;
            }
        }
        
        // Retrieve the new table and convert to array
        $table->update( $new_args );
        $table->fetch_data = true;
        
        $table_array = $table->get_data()->to_array();
        
        $output['draw'] = filter_input( INPUT_POST, 'draw', FILTER_VALIDATE_INT );
        $output['recordsFiltered'] = $table->total_filtered_posts;
        $output['recordsTotal'] = $table->total_posts;
        $output['data'] = $table_array['data'];
        
        pt_update_cache( $table );
                
        echo json_encode( $output );
        exit;
    }
    
}
