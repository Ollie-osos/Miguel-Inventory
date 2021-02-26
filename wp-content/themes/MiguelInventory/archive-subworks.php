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

<div id="page" role="main" class="col-sm-12 col-md-12">
	<h1>Sous-Oeuvres</h1>

	<?php echo do_shortcode('[posts_table rows_per_page="10" post_type=subworks columns="image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,cf:unique_work_code:Numéro d\'inventaire" search_box="top"]'); ?>

</div>

<?php get_footer();


// Load field value and convert to numeric timestamp.
// $unixtimestamp = strtotime( get_field('date') );
