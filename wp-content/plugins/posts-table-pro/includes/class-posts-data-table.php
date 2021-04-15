<?php
/**
 * The main Posts_Data_Table class.
 * 
 * Responsible for creating the posts table from the specified args and returning the 
 * complete table as a Html_Data_Table instance.
 * 
 * The main functions are get_table() and get_data().
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

class Posts_Data_Table {

    public $id;
    public $args;
    public $fetch_data = true;    
    
    // Table params
    public $columns;
    public $headings;
    public $widths;
    public $priorities;
    public $wrap;    
    public $show_footer;
    public $search_on_click;    
    public $scroll_offset;
    public $content_length;  
    public $links;
    public $ajax;
    public $image_size;
    public $date_format;
    public $no_posts_message;
    public $no_posts_filtered_message;
    
    // Post params
    public $rows_per_page;
    public $post_offset; 
    public $sort_by;
    public $sort_order;
    public $post_type;
    public $post_status;
    public $category;
    public $tag;
    public $term;
    public $cf;
    public $year;
    public $month;
    public $day;
    public $exclude;
    public $search_term;
    
    // Results counts
    public $total_posts;
    public $total_filtered_posts;
    
    // Internal data
    private $data_table; 
    private $posts;
    private $data_added = false;
    private $table_config_added = false;

    public static $default_args = array(
        // other columns allowed: id, tags, status, image, tax:<taxonomy_name>, cf:<custom_field>
        'columns' => 'title,content,date,author,category',
        'widths' => '',
        'priorities' => '',
        'wrap' => true,
        'show_footer' => false,        
        'search_on_click' => true,        
        'scroll_offset' => 15,
        'content_length' => 15,
        'links' => 'all', // also allowed: title, terms, author (or any combination) or none
        'ajax' => false,
        'image_size' => 'thumbnail',
        'date_format' => '',
        'no_posts_message' => '',
        'no_posts_filtered_message' => '',
        'rows_per_page' => 20,
        'sort_by' => 'date',
        'sort_order' => '', // no default set - see parse_args()
        'post_type' => 'post',
        'post_status' => 'publish',
        'category' => '',
        'tag' => '',
        'term' => '',
        'cf' => '',
        'year' => '',
        'month' => '',
        'day' => '',
        'exclude' => '' // list of post IDs       
    );
    
    private static $column_defaults;    
    
    public function __construct( $id, $args = array() ) {
        $this->id = $id;
        
        if ( !$args ) { 
            $args = self::$default_args;
        }
        $this->args = $args;      
        $this->parse_args( $args );
        
        add_filter( 'wp_get_attachment_image_attributes', array( $this, 'set_featured_image_class' ), 99 );
    }
    
    public static function column_defaults() {
        // Lazy load column defaults but only do it once
        if ( !self::$column_defaults ) {
            
            // Priority values are used to determine visiblity at small screen sizes (1 = highest priority).
            self::$column_defaults = apply_filters( 'posts_table_column_defaults', array( 
                'id' => array( 'heading' => __( 'ID', 'posts-table-pro' ), 'priority' => 3 ),
                'title' => array( 'heading' => __( 'Title', 'posts-table-pro' ), 'priority' => 1 ),
                'content' => array( 'heading' => __( 'Content', 'posts-table-pro' ), 'priority' => 5 ),
                'date' => array( 'heading' => __( 'Date', 'posts-table-pro' ), 'priority' => 2 ),
                'author' => array( 'heading' => __( 'Author', 'posts-table-pro' ), 'priority' => 4 ),
                'category' => array( 'heading' => __( 'Categories', 'posts-table-pro' ), 'priority' => 7 ),
                'tags' => array( 'heading' => __( 'Tags', 'posts-table-pro' ), 'priority' => 8 ),
                'status' => array( 'heading' => __( 'Status', 'posts-table-pro' ), 'priority' => 9 ),
                'image' => array( 'heading' => __( 'Image', 'posts-table-pro' ), 'priority' => 6 ),
            ) );
            
        }
        return self::$column_defaults;
    }
    
    /**
     * Retrieves a data table containing a list of posts based on the specified arguments.
     * 
     * @param array $args An array of options used to display the posts table
     * @return string The posts table HTML output
     */
    public function get_table() {        
        // Return the table if we already have one
        if ( $this->data_table ) { return $this->data_table; }
        
        // Otherwise start building table
        $this->data_table = new Html_Data_Table();
        $this->data_table->show_footer = $this->show_footer;
        
        // Set table attributes
        $this->data_table->add_attribute( 'id', $this->id );
        $this->data_table->add_attribute( 'class', $this->wrap ? 'posts-data-table' : 'posts-data-table nowrap' );
        $this->data_table->add_attribute( 'data-page-length', $this->rows_per_page );
        $this->data_table->add_attribute( 'data-paging', true );
        $this->data_table->add_attribute( 'data-click-filter', $this->search_on_click );
        $this->data_table->add_attribute( 'data-scroll-offset', $this->scroll_offset );
        $this->data_table->add_attribute( 'data-server-side', $this->ajax );
        
        // Set sort order attribute        
        $raw_date_index = count( $this->columns ); // 'dateraw' is always the last column      
        $sort_index = array_search( $this->sort_by, $this->columns ); 
        
        // If sort by column not found, sort by raw date column 
        if ( false === $sort_index ) {
            $sort_index = $raw_date_index;
        }        
        // 'sort_order' has to be in double quotes (@see https://datatables.net/manual/options)        
        $order_attr = sprintf( '[[%u, "%s"]]', $sort_index, $this->sort_order );
        $this->data_table->add_attribute( 'data-order', $order_attr );
        
        // Add column headings
        foreach( $this->columns as $i => $column ) {
            $heading = isset( $this->headings[$i] ) ? $this->headings[$i] : $this->get_heading( $column );
            $width = isset( $this->widths[$i] ) ? $this->format_width( $this->widths[$i] ) : $this->get_width( $column );
            //@todo: Ensure first column is highest priority so that '+' is not hidden when displaying collapsed rows
            $priority = isset( $this->priorities[$i] ) ? $this->priorities[$i] : $this->get_priority( $column );
            
            $column_atts = array(
                'data-data' => $column,
                'data-orderable' => $this->is_sortable( $column ),
                'data-click-filter' => $this->is_click_filterable( $column ),
                'data-width' => $width,
                'data-priority' => $priority
            );
            
            if ( 'date' === $column ) {
                $column_atts['data-order-data'] = $raw_date_index;
            }
            $this->data_table->add_heading( $column, $heading, $column_atts );
        }
        
        // Add raw date as a hidden column
        $this->data_table->add_heading( 'dateraw', '', array( 
                'data-data' => 'dateraw',
                'data-visible' => false 
            ) 
        );
        
        $this->add_inline_config();
        $this->get_data();
        
        return $this->data_table;
    }
    
    public function get_data() {
        // Create table if needed
        if ( !$this->data_table ) {
            $this->data_table = new Html_Data_Table();
        }
        
        // Return table if data already added or we're not fetching data
        if ( $this->data_added || !$this->fetch_data ) { return $this->data_table; }

        $cols = $this->columns;
        $cols[] = 'dateraw';
        
        // Loop through posts and add post data 
        foreach ( $this->get_posts() as $_post ) {
            setup_postdata( $_post );
            
            // Set post global as needed for certain calls, e.g. get_the_content()
            $GLOBALS['post'] = $_post;

            $this->data_table->new_row();
            array_walk( $cols, array( $this, 'add_post_data' ), $_post );
        }
        
        // Reset main WP query as we called setup_postdata
        wp_reset_postdata();
        
        $this->data_added = true;        
        return $this->data_table;
    }
    
    public function update( $args ) {
        $this->data_table = null;
        $this->data_added = false;
        
        $arg_keys = array_keys( $args );
        
        if ( array_intersect( $arg_keys, 
                array( 'post_type', 'post_status', 'category', 'tag', 'term', 'cf', 'year', 'month', 'day', 'exclude' ) ) ) {
            // If any of the post paramaters are updated, reset posts array and totals             
            $this->posts = null;       
            $this->total_posts = null;
            $this->total_filtered_posts = null;
            
        } elseif ( array_intersect( $arg_keys, array( 'rows_per_page', 'post_offset', 'sort_by', 'sort_order' ) ) ) {
            // If just the table paramaters are updated, reset posts but not totals
            $this->posts = null;
        }
        
        // If our search term changed from last time, reset posts and filtered total
        if( isset( $args['search_term'] ) && $args['search_term'] !== (string) $this->search_term ) {
            $this->posts = null;
            $this->total_filtered_posts = null;
        }
        
        // Update args and parse them into object properties
        $this->args = array_merge( $this->args, $args );
        $this->parse_args( $this->args );
    }
    
    /**
     * Remove wp-post-image class from featured images shown in table.
     * Prevents CSS conflicts with other plugins & themes.
     * 
     * @param array $attr The image attributes
     * @return array The updated attributes
     */
    public function set_featured_image_class( $attr ) {
        if ( !empty( $attr['class'] ) && !empty( $attr['in_posts_table'] ) ) {
            $attr['class'] = trim( str_replace( 'wp-post-image', '', $attr['class'] ) );
        }
        return $attr;
    }    

    /**
     * Add config for this table as inline script to current page.
     */
    private function add_inline_config() {
        if ( $this->table_config_added ) {
            return;
        }
        
        $config = array();
        $date_index = array_search( 'date', $this->columns );

        // If date column used and date format contains no spaces, make sure we 'nowrap' this column
        if ( false !== $date_index && false === strpos( $this->date_format, ' ' ) ) {
            $config['columnDefs'] = array( array( 'targets' => $date_index, 'className' => 'nowrap' ) );
        }

        // Set custom messages
        if ( $this->no_posts_message ) {
            $config['language']['emptyTable'] = $this->no_posts_message;
        }
        if ( $this->no_posts_filtered_message ) {
            $config['language']['zeroRecords'] = $this->no_posts_filtered_message;
        }

        if ( $config ) {
            $inline_script = sprintf( 'var config_%1$s = %2$s;', $this->id, json_encode( $config ) );
            wp_add_inline_script( 'posts-table-pro', $inline_script, 'before' );
        }
            
        $this->table_config_added = true;
    }
    
    private function get_posts() {
        if ( null === $this->posts ) {
            // Build query args and retrieve the posts for our table
            $this->posts = get_posts( $this->build_posts_query() );
        }
        // Set totals if table is loaded via AJAX
        if ( $this->ajax && null === $this->total_posts ) {
            $this->total_posts = $this->get_total_posts();
        }
        if ( $this->ajax && null === $this->total_filtered_posts ) {
            $this->total_filtered_posts = $this->get_total_filtered_posts();
        }        
        return $this->posts;
    }    
    
    private function get_total_posts() {
        $total_query = $this->build_posts_query();
        $total_query['offset'] = 0;
        $total_query['posts_per_page'] = -1;
        $total_query['s'] = null; // total post count should exclude any search term
        $total_query['fields'] = 'ids';
        
        return count( get_posts( $total_query ) );
    }
    
    private function get_total_filtered_posts() {
        $total_query = $this->build_posts_query();
        $total_query['offset'] = 0;
        $total_query['posts_per_page'] = -1;
        $total_query['fields'] = 'ids';
        
        return count( get_posts( $total_query ) );
    }
    
    private function add_post_data( $column, $key, $post ) {
        switch ( $column ) {
            case 'id': 
                $this->data_table->add_data( $post->ID, $column );
                break;
            case 'title': 
                $this->data_table->add_data( $this->get_post_title( $post ), $column );
                break;
            case 'content': 
                $this->data_table->add_data( $this->get_post_content(), $column );
                break;
            case 'date': 
                $this->data_table->add_data( pt_empty_if_false( get_the_date( $this->date_format, $post ) ), $column );
                break;
            case 'dateraw':
                $this->data_table->add_data( $post->post_date, $column );
                break;
            case 'author': 
                $this->data_table->add_data( $this->get_post_author(), $column );
                break;
            case 'category': 
                $this->data_table->add_data( $this->get_post_categories( $post->ID ), $column );
                break;
            case 'tags': 
                $this->data_table->add_data( $this->get_post_terms( $post->ID, 'post_tag' ), $column );
                break;
            case 'status': 
                $this->data_table->add_data( ucfirst( $post->post_status ), $column );
                break;
            case 'image':
                $this->data_table->add_data( get_the_post_thumbnail( $post, $this->image_size, array( 'in_posts_table' => true ) ), $column );
                break;
            default:
                if ( $field = pt_get_custom_field( $column ) ) {
                    // Custom field column
                    $this->data_table->add_data( $this->get_custom_field_value( $post->ID, $field ), $column );
                } elseif ( $tax = pt_get_taxonomy( $column ) ) {
                    // Taxonomy column
                    $this->data_table->add_data( $this->get_post_terms( $post->ID, $tax ), $column );
                } else {
                    // Column not found - add empty string
                    $this->data_table->add_data( '' );
                }
                //@todo: Add filter to allow additional column data to be added
                
                break;
        } // column switch
    }
    
    private function flatten_custom_field( $carry, $item ) {
        if ( is_array( $item ) ) {
            if ( $carry ) {
                $carry .= '<br/>';
            }
            $carry .= array_reduce( $item, array( $this, 'flatten_custom_field' ), '' );
        } elseif ( '' !== $item ) {
            if ( $carry ) {
                $carry .= ', ';
            }
            $carry .= $item;
        }
        return $carry;
    }
    
    private function get_acf_value( $post_id, $field ) {
        $field_obj = get_field_object( $field, $post_id, array( 'format_value' => false ) );
            
        if ( !isset( $field_obj['value'] ) || '' === $field_obj['value'] || empty( $field_obj['type'] ) ) {
            return '';
        }
        
        // Text, text area, number, email, WYSIWYG, color picker all work as standard fields
        $cf_value = $field_obj['value'];
        
        switch ( $field_obj['type'] ) {
            case 'date_picker':
                $cf_value = mysql2date( $this->date_format, $cf_value );
                break;
            case 'radio':                
                if ( !empty( $field_obj['choices'] ) && array_key_exists( $cf_value, $field_obj['choices'] ) ) {
                    $cf_value = $field_obj['choices'][$cf_value];
                }
                break;
            case 'checkbox':                
                if ( !empty( $field_obj['choices'] ) ) {
                    $checkbox_labels = array();

                    foreach ( $cf_value as $checkbox_value ) {
                        if ( array_key_exists( $checkbox_value, $field_obj['choices'] ) ) {
                            $checkbox_labels[] = $field_obj['choices'][$checkbox_value];
                        } else {
                            $checkbox_labels[] = $checkbox_value;
                        }
                    }
                    $cf_value = implode( ', ', $checkbox_labels );
                }
                break;                        
            case 'true_false':
                $cf_value = $cf_value ? __( 'True', 'posts-table-pro' ) : __( 'False', 'posts-table-pro' );
                break;
            case 'file':
                $cf_value = wp_get_attachment_link( $cf_value, 'thumbnail', false, true );
                break;
            case 'image':
                $cf_value = wp_get_attachment_link( $cf_value );
                break;
            case 'page_link':
            case 'post_object':
            case 'relationship':
                $cf_value = implode( ', ', array_map( array( $this, 'get_post_title' ), (array) $cf_value ) );
                break;
            case 'taxonomy':
                $term_links = array();
                foreach ( (array) $cf_value as $term_id ) {
                    if ( $term = get_term_by( 'id', $term_id, $field_obj['taxonomy'] ) ) {
                        if ( array_intersect( array( 'all', 'terms' ), $this->links ) ) {
                            $term_links[] = sprintf( '<a href="%1$s" rel="tag">%2$s</a>', esc_url( get_term_link( $term_id, $field_obj['taxonomy'] ) ), $term->name );
                        } else {
                            $term_links[] = $term->name;
                        }
                    }
                }
                $cf_value = implode( ', ', $term_links );
                break;
            case 'user':
                if ( array_intersect( array( 'all', 'author' ), $this->links ) ) {
                    $cf_value = sprintf(
                        '<a href="%1$s" rel="author">%2$s</a>',
                        esc_url( get_author_posts_url( $cf_value ) ),
                        get_the_author_meta( 'nicename', $cf_value )
                    );
                } else {
                    $cf_value = get_the_author_meta( 'nicename', $cf_value );
                }
                break;
            //@todo: Layout field types?
        }

        return $cf_value;
    }
    
    private function get_custom_field_value( $post_id, $field ) {
        // Get the custom field value
        $cf_value = get_post_meta( $post_id, $field, false );
        
        if ( empty( $cf_value ) ) {
            $cf_value = '';
        } elseif ( 1 === count( $cf_value ) ) {
            $cf_value = reset( $cf_value );
        }
        
        if ( function_exists( 'get_field_object' ) ) {
            // Handle Advanced Custom Fields
            $cf_value = $this->get_acf_value( $post_id, $field );
        } 
        if ( is_array( $cf_value ) ) {
            $cf_value = array_reduce( $cf_value, array( $this, 'flatten_custom_field' ), '' );
        }
        
        return $cf_value;
    }
    
    private function get_post_title( $post ) {
        //@todo - Don't link to post if it's not viewable on front-end
        if ( array_intersect( array( 'all', 'title' ), $this->links ) ) {
            return sprintf( '<a href="%1$s">%2$s</a>', get_permalink( $post ), get_the_title( $post ) );
        } else {
            return get_the_title( $post );
        }
    }
    
    /**
     * Retrieve the post content, truncated to the number of words specified by $num_words.
     * 
     * Must be called with the Loop or a secondary loop after a call to setup_postdata().
     *  
     * @param int $num_words The number of words to trim the content to
     * @return string The (truncated) post content
     */
    private function get_post_content() {
        //@todo: Get the excerpt if there is one
        $text = get_the_content('');
        $text = strip_shortcodes( $text ); // Important! Can cause out-of-memory errors if we try to process shortcodes
        $text = apply_filters( 'the_content', $text ); 
            
        if ( $this->content_length > 0 ) {
            $text = wp_trim_words( $text, $this->content_length, ' &hellip;' ); // will also strip tags 
        }
        
        return $text;
    }
    
    private function get_post_author() {
        if ( array_intersect( array( 'all', 'author' ), $this->links ) ) {
            return get_the_author_posts_link();
        } else {
            return get_the_author();
        }
    }
    
    private function get_post_categories( $post_id, $sep = ', ' ) {        
        if ( array_intersect( array( 'all', 'terms' ), $this->links ) ) {
            return get_the_category_list( $sep, '', $post_id );
        } else {
            $cats = get_the_category( $post_id );
            
            if ( !$cats ) {
                return apply_filters( 'the_category', __( 'Uncategorized', 'posts-table-pro' ), $sep, '' );
            }
            return implode( $sep, wp_list_pluck( $cats, 'name' ) );
        }
    }
    
    private function get_post_terms( $post_id, $taxonomy, $sep = ', ' ) {        
        if ( array_intersect( array( 'all', 'terms' ), $this->links ) ) {
            return pt_empty_if_false( get_the_term_list( $post_id, $taxonomy, '', $sep ) );
        } else {
            $terms = get_the_terms( $post_id, $taxonomy );
            if ( !$terms || !is_array( $terms ) ) { return ''; }
            
            return implode( $sep, wp_list_pluck( $terms, 'name') );
        }
    }
      
    private function get_heading( $column ) {
        $heading = '';
        $standard_cols = self::column_defaults();
        
        if ( isset( $standard_cols[$column]['heading'] ) ) {
            $heading = $standard_cols[$column]['heading'];

        } elseif ( $field = pt_get_custom_field( $column ) ) {
            $heading = trim( ucwords( str_replace( array( '_', '-'), ' ', $field ) ) );

        } elseif ( $tax = pt_get_taxonomy( $column ) ) {
            if ( $tax_obj = get_taxonomy( $tax ) ) {
                $heading = $tax_obj->label;
            }
        }
                
        return apply_filters( 'posts_table_column_heading_' . pt_unprefix_column( $column ), $heading );
    }
    
    private function get_priority( $column ) {
        $priority = '';
        $standard_cols = self::column_defaults();
        
        if ( isset( $standard_cols[$column]['priority'] ) ) {
            $priority = $standard_cols[$column]['priority'];
        }
    
        return apply_filters( 'posts_table_column_priority_' . pt_unprefix_column( $column ), $priority );
    }
    
    private function get_width( $column ) {        
        $width = apply_filters( 'posts_table_column_width_' . pt_unprefix_column( $column ), '' );
        return $this->format_width( $width );
    }
    
    private function format_width( $width ) {
        if ( 'auto' === $width ) {
            $width = '';
        } elseif ( is_numeric( $width ) ) {
            $width = $width . '%';
        }
        return $width;
    }
    
    private function is_sortable( $column ) {
        //@todo: Allow sorting by custom field        
        if ( $this->ajax && in_array( $column, array( 'id', 'title', 'date', 'author' ) ) ) {
            return true;
        } elseif ( !$this->ajax ) {
            return true;
        }
        return false; 
    }
   
    private function is_click_filterable( $column ) {
        return in_array( $column, array( 'category', 'tag', 'author') ) || pt_is_taxonomy( $column );
    }
   
    private function build_posts_query() {
        $query_args = array(
            'post_type' => $this->post_type,
            'post_status' => $this->post_status,
            'category_name' => $this->category,
            'tag' => $this->tag,
            'tax_query' => $this->build_tax_or_meta_query( $this->term ),
            'meta_query' => $this->build_tax_or_meta_query( $this->cf, 'meta' ),
            'year' => $this->year,
            'monthnum' => $this->month,
            'day' => $this->day,
            'order' => $this->sort_order,
            'orderby' => $this->sort_by,
            'offset' => $this->post_offset,
            'suppress_filters' => false // Ensure WPML filters run on this query
        );
        
        if ( !empty( $this->exclude ) ) {
            $query_args['post__not_in'] = $this->exclude;
        }
        if ( !empty( $this->search_term ) ) {
            $query_args['s'] = $this->search_term;
        }
        if ( $this->ajax ) {
            $query_args['posts_per_page'] = $this->rows_per_page;
        } else {
            $query_args['posts_per_page'] = apply_filters( 'posts_table_max_posts_limit', 15000 );
        }

        return apply_filters( 'posts_table_query_args', $query_args );
    }
        
    private function build_tax_or_meta_query( $arg, $type = 'tax' ) {
        // Build tax query if we have terms
        if ( !$arg ) { return false; }
        $query = array();

        // comma-delimited = OR, plus-delimited = AND
        $relation = 'OR';
        $items = explode( ',', $arg );

        if ( count( $items ) === 1 ) {
            $items = explode( '+', $arg );
            $relation = 'AND';
        }
        // Only add relation if we're searching more than one term / custom field
        if ( count( $items ) > 1 ) {
            $query['relation'] = $relation;
        }
        foreach ( $items as $item ) {            
            // Split term or custom field around colon and check valid 
            // Terms are in format <taxonomy>:<term>
            // Custom fields are in format <field_key>:<field_value>
            $item_exp = explode( ':', $item );
            
            // Ensure term/field is valid format
            if ( count( $item_exp ) !== 2 ) { continue; }
            
            if ( 'tax' === $type ) {
                $query[] = array(
                    'taxonomy' => $item_exp[0],
                    'field' => 'slug',
                    'terms' => $item_exp[1]
                );
            } else {
                //@todo: Allow search by custom field key only (no value specified)
                $query[] = array(
                    'key' => $item_exp[0],
                    'value' => $item_exp[1],
                    'compare' => '='
                );
            }
        } // foreach term or custom field
        
        return $query;
    }
    
    private function parse_args( $args ) {        
        $sanitize_list = array( 
            'filter' => FILTER_CALLBACK,
            'options' => 'pt_sanitize_list_arg' 
        );
        
        $sanitize_numeric_list = array(
            'filter' => FILTER_CALLBACK,
            'options' => 'pt_sanitize_numeric_list_arg'
        );

        $validate_positive_int = array(
            'filter' => FILTER_VALIDATE_INT,
            'options' => array( 
                'min_range' => 0
            )
        );
        
        $validation = array(
            'columns' => FILTER_SANITIZE_STRING,
            'widths' => $sanitize_list,
            'priorities' => $sanitize_numeric_list,
            'wrap' => FILTER_VALIDATE_BOOLEAN,
            'show_footer' => FILTER_VALIDATE_BOOLEAN,
            'search_on_click' => FILTER_VALIDATE_BOOLEAN,
            'scroll_offset' => array(
                    'filter' => FILTER_VALIDATE_INT,
                    'options' => array( 'default' => self::$default_args['scroll_offset'] )
                ),
            'content_length' => array(
                    'filter' => FILTER_VALIDATE_INT,
                    'options' => array(
                        'default' => self::$default_args['content_length'], 
                        'min_range' => -1 
                    )
                ),        
            'links' => $sanitize_list,
            'ajax' => FILTER_VALIDATE_BOOLEAN,
            'image_size' => $sanitize_list,
            'date_format' => FILTER_SANITIZE_STRING,
            'no_posts_message' => FILTER_SANITIZE_STRING,
            'no_posts_filtered_message' => FILTER_SANITIZE_STRING,
            'rows_per_page' => array(
                    'filter' => FILTER_VALIDATE_INT,
                    'options' => array( 
                        'default' => self::$default_args['rows_per_page'], 
                        'min_range' => -1 
                    )
                ),
            'post_offset' => $validate_positive_int,         
            'sort_by' => FILTER_SANITIZE_STRING,
            'sort_order' => FILTER_SANITIZE_STRING,
            'post_type' => $sanitize_list,
            'post_status' => $sanitize_list,
            'category' => $sanitize_list,
            'tag' => $sanitize_list,
            'term' => $sanitize_list,
            'cf' => $sanitize_list,
            'year' => $validate_positive_int,
            'month' => array(
                    'filter' => FILTER_VALIDATE_INT,
                    'options' => array( 
                        'default' => self::$default_args['month'], 
                        'min_range' => 1, 
                        'max_range' => 12 
                    )
                ),
            'day' => array(
                    'filter' => FILTER_VALIDATE_INT,
                    'options' => array( 
                        'default' => self::$default_args['day'], 
                        'min_range' => 1, 
                        'max_range' => 31 
                    )
                ),
            'exclude' => $sanitize_numeric_list,
            'search_term' => FILTER_SANITIZE_STRING
        );
               
        // Sanitize/validate all args and set object properties from them
        pt_set_object_vars( $this, filter_var_array( $args, $validation ) );

        // Fill in any blank properties 
        foreach ( array( 'columns', 'links', 'post_type', 'post_status', 'image_size' ) as $arg ) {
            if ( empty( $this->$arg ) ) {
                $this->$arg = self::$default_args[$arg];
            }
        }
        
        // Convert some of the list-based args to arrays
        foreach ( array( 'columns', 'widths', 'priorities', 'post_type', 'post_status', 'exclude' ) as $arg ) {
            if ( is_array( $this->$arg ) || '' === $this->$arg ) { 
                continue;
            }
            $this->$arg = array_map( 'trim', explode( ',', $this->$arg ) );
        }
        
        // Validate and parse the columns and headings to use in posts table
        $cols = $headings = array();
        
        foreach ( $this->columns as $raw_column ) {
            $first = strtok( $raw_column, ':' );
            $heading = false;
            
            if ( false === $first ) { // default column with no custom heading
                $column = $raw_column; 
            } elseif ( 'cf' === $first ) { // custom field
                $column = 'cf:' . strtok( ':' );
                $heading = strtok( '' ); // this will return rest of heading (even if it includes a ':') 
            } elseif ( 'tax' === $first ) { // taxonomy
                $tax = strtok( ':' );
                $column = 'tax:' . $tax;
                $heading = strtok( '' ); // fetch rest of heading
            } else { // default column with custom heading
                $column = $first;
                $heading = strtok( '' ); // fetch rest of heading
            }
            
            if ( 'cf' === $first || ( 'tax' === $first && taxonomy_exists( $tax ) ) || array_key_exists( $column, self::column_defaults() ) ) {
                $cols[] = $column;
                $headings[] = empty( $heading ) ? $this->get_heading( $column ) : $heading;
            }
            
            //@todo: Add filter to allow additional columns to be added
        }
        // If none of the specfied columns are valid, use the default columns instead        
        $this->columns = $cols ? $cols : explode( ',', self::$default_args['columns'] );
        $this->headings = $headings;
        
        // Validate widths and priorities
        if ( $this->widths ) {
            $this->widths = array_slice( $this->widths, 0, count( $this->columns ) );
            $this->widths = array_replace( array_fill( 0, count( $this->columns ), 'auto' ), $this->widths );
        }        
        if ( $this->priorities && count( $this->columns ) !== count( $this->priorities ) ) {
            $this->priorities = self::$default_args['priorities'];
        }
        
        // Check links arg - used to control whether certain data items are links or plain text
        if ( 'all' === $this->links || 'none' === $this->links ) {
            $this->links = (array) $this->links;
        } else {
            $this->links = array_intersect( explode( ',', $this->links ), array( 'author', 'terms', 'title' ) );
        }
        if ( !$this->links ) {
            $this->links = (array) self::$default_args['links'];
        }
        
        // Validate content length & rows per page - can be positive int or -1
        foreach ( array( 'content_length', 'rows_per_page' ) as $arg ) {
            if ( 0 === $this->$arg ) {
                $this->$arg = -1;
            }
        }
        
        // Image size
        $this->image_size = str_ireplace( 'x', ',', $this->image_size );
        
        if ( false !== strpos( $this->image_size, ',' ) ) {
            $this->image_size = array_slice( explode( ',', $this->image_size ), 0, 2 );
        }
        
        //Set date format
        if ( !$this->date_format ) {
            $this->date_format = get_option( 'date_format' );
        }
        
        // Set post offset
        if ( null === $this->post_offset ) {
            $this->post_offset = 0;
        }
        
        //@todo: Sanitize according to https://codex.wordpress.org/Class_Reference/WP_Query#Order_.26_Orderby_Parameters
        //@todo: Only allow supported columns if doing AJAX
        //@todo: Support numerical ordering
        
        // Ensure 'sort by' column is present (and can be sorted by), otherwise default to date
        if ( !in_array( $this->sort_by, $this->columns ) || !$this->is_sortable( $this->sort_by ) ) {
            $this->sort_by = 'date';
        }
        
        // Set sort order if not specified by user
        if ( !in_array( $this->sort_order, array( 'asc', 'desc' ) ) ) {
            // Default to descending if date, ascending for everything else
            $this->sort_order = ( 'date' === $this->sort_by ) ? 'desc' : 'asc';
        }
        
        // Check post types valid
        $types = array();
        foreach ( $this->post_type as $pt ) {
            if ( post_type_exists( $pt ) ) {
                $types[] = $pt;
            }
        }
        $this->post_type = $types ? $types : self::$default_args['post_type'];
        
        // Attachments have a status of 'inherit' so we need to set post_status otherwise no results will be returned
        if ( array( 'attachment' ) === $this->post_type ) {
            $this->post_status = 'inherit';
        }
        
        // Post IDs to exclude
        if ( $this->exclude ) {
            $this->exclude = array_map( 'absint', $this->exclude );
        }
        
        $this->fetch_data = !$this->ajax;       
    }
    
} // class Posts_Data_Table
