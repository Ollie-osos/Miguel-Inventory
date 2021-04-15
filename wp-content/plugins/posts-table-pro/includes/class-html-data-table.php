<?php
/**
 * The HTML_Data_Table class.
 *
 * This class allows you to build a HTML table by sequentially adding headings, rows, data, etc. using the in-built class methods.
 * 
 * The HTML for the table can then be obtained by calling the get_html() method. This makes it a much cleaner way of producing 
 * the HTML required for a table.
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

class Html_Data_Table {

    public $show_footer = false;
    
    private $attributes = array();
    private $headings = array();
    private $data = array();
    private $current_row = false;    
    
    public function __construct() {
        // Set default table attributes
        $this->add_attribute( 'cellspacing', '0' );
        $this->add_attribute( 'width', '100%' );
    }
    
    public function add_attribute( $name, $value ) {
        $this->attributes[$name] = $value;
    }
    
    public function add_heading( $column, $heading, $atts = false ) {
        $this->headings[$column] = array( 'heading' => $heading, 'attributes' => $atts );
    }
    
    public function new_row() {
        if ( !$this->is_empty_row( $this->current_row ) ) {
            $this->data[] = $this->current_row;
        }
        $this->current_row = array();
    }
    
    public function add_data( $data, $key = false ) {
        if ( false === $key ) {
            $this->current_row[] = $data;
        } else {
            $this->current_row[$key] = $data;
        }
    }
    
    public function to_html() {
        // Store data in current row if not done so already
        $this->new_row();
        
        $heading_row = $footer_row = $data_rows = '';
        $heading_fmt = '<th%2$s>%1$s</th>';
        
        foreach ( $this->headings as $heading ) {            
            $heading_row .= sprintf( $heading_fmt, $heading['heading'], $this->format_attributes( $heading['attributes'] ) ); 
            $footer_row .= sprintf( $heading_fmt, $heading['heading'], '' );
        }        
        
        foreach ( $this->data as $row ) {
            if ( !$row ) { continue; }
            $row_html = '';
            
            foreach ( $row as $cell ) {
                $row_html .= '<td>' . $cell . '</td>';
            }
            if ( $row_html ) {
                $data_rows .= '<tr>' . $row_html . '</tr>';
            }
        }
        
        $header = $heading_row ? '<thead><tr>' .$heading_row . '</tr></thead>' : false;
        $body = $data_rows ? '<tbody>' . $data_rows . '</tbody>' : false;
        $footer = $this->show_footer ? '<tfoot><tr>' . $footer_row . '</tr></tfoot>' : false;
                
        $attributes = $this->format_attributes( $this->attributes );        
        return sprintf( '<table%1$s>%2$s%3$s%4$s</table>', $attributes, $header, $footer, $body );
    }
    
    public function to_array() {
        // Store data in current row if not done so already        
        $this->new_row();
        $data_array = array();
        
        foreach ( $this->data as $row ) {
            if ( !$row ) { continue; }
            
            $row_array = array();
            foreach ( $row as $index => $cell ) {
                $row_array[$index] = $cell;
            }
            $data_array[] = $row_array;
        }
        
        $result = array(
            'attributes' => $this->attributes,
            'headings' => $this->headings,
            'data' => $data_array
        );
        
        return $result;
    }
    
    public function to_json() {
        return json_encode( $this->to_array() );
    }    
    
    private function format_attributes( $atts ) {
        if ( !$atts ) return;
        $result = '';
        
        foreach ( $atts as $name => $value ) {
            // Ignore null attributes and empty strings
            if ( '' === $value || null === $value ) continue;
            
            if ( !is_string( $value ) ) $value = pt_var_to_string ( $value );
            
            // If attribute contains a double-quote, wrap it in single-quotes to avoid parsing errors
            if ( false === strpos( $value, '"' ) ) {
                $result .= sprintf( ' %s="%s"', $name, $value );    
            } else {
                $result .= sprintf( " %s='%s'", $name, $value );    
            }
        }
        return $result;
    }
    
    private function is_empty_row( $row ) {
        if ( empty( $row ) ) {
            return true;
        }
        unset( $row['dateraw'] );
        return '' == trim( implode( '', $row ) );
    }    
    
}
