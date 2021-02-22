<?php
/**
 * Configure responsive images sizes
 *
 * @package WordPress
 * @subpackage FoundationPress
 * @since FoundationPress 2.6.0
 */

// Add additional image sizes
add_image_size( 'medium', 1024 );

// Register the new image sizes for use in the add media modal in wp-admin
add_filter( 'image_size_names_choose', 'wpshout_custom_sizes' );
function wpshout_custom_sizes( $sizes ) {
	return array_merge( $sizes, array(
		'medium' => __( 'Medium' )
	) );
}