<?php

/**
 * The template for displaying archive pages
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * If you'd like to further customize these archive views, you may create a
 * new template file for each one. For example, tag.php (Tag archives),
 * category.php (Category archives), author.php (Author archives), etc.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */
$img = get_field('main_image');
get_header(); ?>

<div id="page" class="main col-sm-12 col-md-12">
	<h1>Exhibitions</h1>

	<?php echo do_shortcode('[posts_table rows_per_page="10" post_type=exposition columns="image: Photo;,title:Title,cf:city:Ville,cf:country:Pays,cf:type_of_exhibition:Type d exposition,cf:unique_exhibition_code:Code exposition" search_box="top"]'); ?>

</div>

<?php get_footer();


// Load field value and convert to numeric timestamp.
// $unixtimestamp = strtotime( get_field('date') );
