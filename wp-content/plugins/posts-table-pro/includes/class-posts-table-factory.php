<?php
/**
 * Posts Table Factory class. 
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

class Posts_Table_Factory {
    
    private static $tables = array();
    
    public static function create( $args ) {
        $id = 'pdt_' . md5( serialize( $args ) );
        self::$tables[$id] = new Posts_Data_Table( $id, $args );     
             
        pt_update_cache( self::$tables[$id] );
        
        //@todo Update tables array in object cache
        return self::$tables[$id];
    }
    
    public static function get( $id ) {        
        
        if ( isset( self::$tables[$id] ) ) {
            return self::$tables[$id];
        } elseif ( $table = pt_load_from_cache( $id ) ) {
            return $table;            
        } else {
            // No cached table found so create new one with defaults
            return self::create( Posts_Data_Table::$default_args );
        }
    }
    
}

