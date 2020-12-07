<?php
/**
 * Author: Ole Fredrik Lie
 * URL: http://olefredrik.com
 *
 * FoundationPress functions and definitions
 *
 * Set up the theme and provides some helper functions, which are used in the
 * theme as custom template tags. Others are attached to action and filter
 * hooks in WordPress to change core functionality.
 *
 * @link https://codex.wordpress.org/Theme_Development
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

/** Various clean up functions */
require_once( 'library/cleanup.php' );

/** Required for Foundation to work properly */
require_once( 'library/foundation.php' );

/** Register all navigation menus */
require_once( 'library/navigation.php' );

/** Add menu walkers for top-bar and off-canvas */
require_once( 'library/menu-walkers.php' );

/** Create widget areas in sidebar and footer */
require_once( 'library/widget-areas.php' );

/** Return entry meta information for posts */
require_once( 'library/entry-meta.php' );

/** Enqueue scripts */
require_once( 'library/enqueue-scripts.php' );

/** Add theme support */
require_once( 'library/theme-support.php' );

/** Add Nav Options to Customer */
require_once( 'library/custom-nav.php' );

/** Change WP's sticky post class */
require_once( 'library/sticky-posts.php' );

/** Configure responsive image sizes */
require_once( 'library/responsive-images.php' );

/** If your site requires protocol relative url's for theme assets, uncomment the line below */
// require_once( 'library/protocol-relative-theme-assets.php' );

// to add extra items to the page head
// add_action('wp_head','header_items');

//  change maximum file load size

@ini_set( 'upload_max_size' , '64M' );
@ini_set( 'post_max_size', '64M');
@ini_set( 'max_execution_time', '300' );

/**
 * WordPress admin customisation
 */
function my_login_logo() { ?>
	<style type="text/css">

		html {
			background: #f6f6f6;
		}

		body.login div#login h1 a {
			/* background: url(<?php echo get_bloginfo( 'template_directory' ) ?>/assets/images/theme/medelalogo.svg) no-repeat !important;*/
			padding-bottom: 0;
			background-size: 300px 57px;
			height: 57px;
			margin: 0 auto 25px;
			width: 300px;
		}

		body.login {
			/* background: #000 url(<?php echo get_bloginfo( 'template_directory' ) ?>/assets/images/theme/splash-screen.jpg) no-repeat !important;*/
			background-size: cover !important;
			background-position: 50% !important;
			font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
			font-weight: 300;
			color: #757474;
		}

		body #login {
			position: relative;;
			overflow: hidden;
		}

	</style>
<?php }
add_action( 'login_enqueue_scripts', 'my_login_logo' );


// customise the made by content
function modify_footer_admin () {
	echo 'Created by <a href="http://olliesmith.net">OS Web development</a>';
}
add_filter('admin_footer_text', 'modify_footer_admin');


// add scripts to head
function header_items() {
	$output='<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>';	
	echo $output;
}

// add assets to the wp_head function
add_action('wp_head','header_items');

// to add custom post types to the sites menu
add_action( 'init', 'create_post_type' );

function create_post_type() {
	register_post_type( 'works',
		array(
			'labels' => array(
				'name' => __( 'Works/Oeuvres' ),
				'singular_name' => __( 'Works/Oeuvres' )
			),
		'public' => true,
		'show_in_nav_menus' => true,
		'has_archive' => true,
		'menu_icon' => 'dashicons-images-alt2'
		)
	);

	register_post_type( 'exhibitions',
		array(
			'labels' => array(
				'name' => __( 'Expositions' ),
				'singular_name' => __( 'Exhibitions' )
			),
		'public' => true,
		'show_in_nav_menus' => true,
		'has_archive' => true,
		'menu_icon' => 'dashicons-admin-site-alt'
		)
	);

	register_post_type( 'bibliographies',
		array(
			'labels' => array(
				'name' => __( 'Bibliographies' ),
				'singular_name' => __( 'Bibliographies' )
			),
		'public' => true,
		'show_in_nav_menus' => true,
		'has_archive' => true,
		'menu_icon' => 'dashicons-book-alt'
		)
	);

	register_post_type( 'subworks',
		array(
			'labels' => array(
				'name' => __( 'Sub Works' ),
				'singular_name' => __( 'Sub Works' )
			),
		'public' => true,
		'show_in_nav_menus' => true,
		'has_archive' => true,
		'menu_icon' => 'dashicons-images-alt2'
		)
	);

}

// add_post_type_support( 'exhibitions', 'thumbnail' );
// add_post_type_support( 'works', 'thumbnail' );
// add_post_type_support( 'bibliographies', 'thumbnail' );
// add_post_type_support( 'subworks', 'thumbnail' );

// remove admin items we don't use / need
// $restricted = array(__('Links'), __('Comments'), __('Posts'),__('Tools'),__('Users'), __('Plugins'));
function remove_menu_items() {
  global $menu;
  $restricted = array(__('Links'), __('Comments'), __('Posts'),__('Tools'),__('Users'));
  end ($menu);
  while (prev($menu)){
    $value = explode(' ',$menu[key($menu)][0]);
    if(in_array($value[0] != NULL?$value[0]:"" , $restricted)){
      unset($menu[key($menu)]);}
    }
  }

//add_action('admin_menu', 'remove_menu_items');


//  remove admin item we don't use / need
function remove_submenus() {
  global $submenu;
  unset($submenu['index.php'][10]); // Removes 'Updates'.
  unset($submenu['themes.php'][5]); // Removes 'Themes'.
  unset($submenu['options-general.php'][10]); // Removes 'Writing'.
  unset($submenu['options-general.php'][15]); // Removes 'Discussion'.
  unset($submenu['options-general.php'][20]); // Removes 'Writing'.
  unset($submenu['options-general.php'][25]); // Removes 'Discussion'.
  unset($submenu['options-general.php'][30]); // Removes 'Writing'.
  unset($submenu['options-general.php'][35]); // Removes 'Discussion'.
  unset($submenu['options-general.php'][40]); // Removes 'Discussion'.
  unset($submenu['edit.php'][16]); // Removes 'Tags'.
}

//add_action('admin_menu', 'remove_submenus');

// Hide 'Screen Options' tab
function remove_screen_options_tab() {
    return false;
}
//add_filter('screen_options_show_screen', 'remove_screen_options_tab');

add_action('wp_footer','add_footerScripts');
// <script id="__bs_script__">//<![CDATA[ document.write("<script async src='http://HOST:3000/browser-sync/browser-sync-client.js?v=2.18.6'><\/script>".replace("HOST", location.hostname));</script>
function add_footerScripts() { }

// add options page
if( function_exists('acf_add_options_page') ) {
	acf_add_options_page();	
}

// add custom image crop options. 
// https://developer.wordpress.org/reference/functions/add_image_size/
// https://havecamerawilltravel.com/photographer/wordpress-thumbnail-crop
add_action( 'after_setup_theme', 'wpdocs_theme_setup' );
function wpdocs_theme_setup() {
    add_image_size( 'hero_image', 1280, 720, true ); // (cropped)
}

/**
 * Responsive Image Helper Function
 *
 * @param string $image_id the id of the image (from ACF or similar)
 * @param string $image_size the size of the thumbnail image or custom image size
 * @param string $max_width the max width this image will be shown to build the sizes attribute 
 */

// usage: http://aaronrutley.com/responsive-images-in-wordpress-with-acf/

function ar_responsive_image($image_id,$image_size,$max_width){

	// check the image ID is not blank
	if($image_id != '') {

		// set the default src image size
		$image_src = wp_get_attachment_image_url( $image_id, $image_size );

		// set the srcset with various image sizes
		$image_srcset = wp_get_attachment_image_srcset( $image_id, $image_size );

		// generate the markup for the responsive image
		echo 'src="'.$image_src.'" srcset="'.$image_srcset.'" sizes="(max-width: '.$max_width.') 100vw, '.$max_width.'"';

	}
}

// add unique field
  
function acf_unique_value_field($valid, $value, $field, $input) {
	if (!$valid || (!isset($_POST['post_ID']) && !isset($_POST['post_id']))) {
		return $valid;
	}
	if (isset($_POST['post_ID'])) {
		$post_id = intval($_POST['post_ID']);
	} else {
		$post_id = intval($_POST['post_id']);
	}
	if (!$post_id) {
		return $valid;
	}
	$post_type = get_post_type($post_id);
	$field_name = $field['name'];
	$args = array(
		'post_type' => $post_type,
		'post_status' => 'publish, draft, trash',
		'post__not_in' => array($post_id),
		'meta_query' => array(
			array(
				'key' => $field_name,
				'value' => $value
			)
		)
	);
	$query = new WP_Query($args);
	if (count($query->posts)){
		return 'This Value is not Unique. Please enter a unique '.$field['label'];
	}
	return true;
}
	
add_filter('acf/validate_value/name=unique_bibliography_code', 'acf_unique_value_field', 10, 4);
add_filter('acf/validate_value/name=unique_exhibition_code', 'acf_unique_value_field', 10, 4);
add_filter('acf/validate_value/name=unique_work_code', 'acf_unique_value_field', 10, 4);
add_filter('acf/validate_value/name=unique_subwork_code', 'acf_unique_value_field', 10, 4);