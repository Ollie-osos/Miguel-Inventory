<?php
/**
 * Utility functions for caching.
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

function pt_update_cache( Posts_Data_Table $posts_table ) {
    
    if ( $table_trans = get_transient( $posts_table->id ) ) {
        $table_trans['args'] = $posts_table->args;
        $table_trans['total_posts'] = $posts_table->total_posts;
        $table_trans['total_filtered'] = $posts_table->total_filtered_posts;
        $table_trans['search_term'] = $posts_table->search_term; 
    } else {
        $table_trans = array( 'args' => $posts_table->args );
    }
    set_transient( $posts_table->id, $table_trans );
}

function pt_load_from_cache( $id ) {    
    if ( $table_trans = get_transient( $id ) ) {
        $table = new Posts_Data_Table( $id, $table_trans['args'] );

        if ( isset( $table_trans['total_posts'] ) ) {
            $table->total_posts = $table_trans['total_posts'];
        }
        if ( isset( $table_trans['total_filtered'] ) ) {
            $table->total_filtered_posts = $table_trans['total_filtered'];
        }
        if ( isset( $table_trans['search_term'] ) ) {
            $table->search_term = $table_trans['search_term'];
        }
        return $table;
    }
    return false;
}
