<?php
/**
 * General util functions.
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

function pt_var_to_string( $var ) {
    return var_export( $var, true );
}

function pt_empty_if_false( $var ) {
    if ( false === $var ) {
        return '';
    }
    return $var;
}

function pt_set_object_vars( $object, array $vars ) {
    $has = get_object_vars( $object );
    foreach ( $has as $name => $old ) {
        $object->$name = isset( $vars[$name] ) && ( null !== $vars[$name] ) ? $vars[$name] : $old;
    }
}

function pt_sanitize_list_arg( $arg ) {
    if ( is_string( $arg ) ) {
        // Allows any "word", comma, full-stop, colon, hyphen, plus sign or single space
        return preg_replace( '/[^\w,\.\:\-\+ ]/', '', $arg ); 
    }
    return $arg;
}

function pt_sanitize_numeric_list_arg( $arg ) {
    if ( is_string( $arg ) ) {
        // Allows decimal digit or comma
        return preg_replace( '/[^\d,]/', '', $arg ); 
    }
    return $arg;
}

function pt_is_custom_field( $column ) {
    return $column && 'cf:' === substr( $column, 0, 3 );
}

function pt_get_custom_field( $column ) {
    if ( pt_is_custom_field( $column ) ) {
        return substr( $column, 3 );
    }
    return false;
}

function pt_find_custom_fields( $columns ) {
    $result = array();

    if ( !is_array( $columns ) ) {
        $columns = explode( ',', $columns );
    }
    foreach ( $columns as $column ) {
        if ( $field = pt_get_custom_field( $column ) ) {
            $result[] = $field;
        }
    }
    return $result;
}

function pt_is_taxonomy( $column ) {
    return $column && 'tax:' === substr( $column, 0, 4 );
}

function pt_get_taxonomy( $column ) {
    if ( pt_is_taxonomy( $column ) ) {
        return substr( $column, 4 );
    }
    return false;
}   

function pt_find_taxonomies( $columns ) {
    $result = array();

    if ( !is_array( $columns ) ) {
        $columns = explode( ',', $columns );
    }
    foreach ( $columns as $column ) {
        if ( $tax = pt_get_taxonomy( $column ) ) {
            $result[] = $tax;
        }
    }
    return $result;
}

function pt_unprefix_columns( $columns ) {
    if ( !is_array( $columns ) ) {
        $columns = explode( ',', $columns );
    }
    return array_map( 'pt_unprefix_column', $columns );
}

function pt_unprefix_column( $column ) {
    if ( false !== ( $str = strstr( $column, ':' ) ) ) {
        $column = substr( $str, 1 );
    }
    return $column;    
}    
