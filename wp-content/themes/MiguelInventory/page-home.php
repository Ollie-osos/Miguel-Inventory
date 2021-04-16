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
get_header();

get_sidebar(); ?>
<div id="page" role="main" class="col-sm-10 col-md-9">

	<h5>Oeuvres</h5>
	<?php echo do_shortcode('[posts_table search_box="bottom" rows_per_page="3" post_type=oeuvre columns="image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire" search_box="top" filters="categories"]'); ?>

	<h5>Expositions</h5>

	<?php echo do_shortcode('[posts_table rows_per_page="3" post_type=exposition columns="image: &nbsp;,title:Title,cf:city:Ville,cf:start_date:Dates,cf:unique_exhibition_code:Code exposition" search_box="top"]'); ?>

	<h5>Réferences Bibliographiques</h5>

	<?php echo do_shortcode('[posts_table rows_per_page="3" post_type=bibliographies columns="image: &nbsp;,cf:author:Author,title:Title,cf: publication_date:Date,cf:editor:Editeur,cf:unique_bibliography_code:Code référence" search_box="top"]'); ?>

</div>

<?php get_footer();

