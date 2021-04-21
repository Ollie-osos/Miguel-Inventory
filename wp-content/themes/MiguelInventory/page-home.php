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
<div id="page" class="main col-sm-10 col-md-9">

	<h5>Oeuvres</h5>
	<?php echo do_shortcode('[posts_table pagination="false" post_limit="5" post_type=oeuvre columns="image: Photo,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire" sort_by="cf:creation_date" sort_order="desc" lazy_load="true" rows_per_page="3"]'); ?>

	<h5>Expositions</h5>

	<?php echo do_shortcode('[posts_table post_limit="3" post_type=exposition columns="image: Photo,title:Title,cf:city:Ville,cf:start_date:Start Date,cf:unique_exhibition_code:Code exposition" sort_by="cf:start_date" sort_order="desc" lazy_load="true" rows_per_page="3"]'); ?>

	<h5>Réferences Bibliographiques</h5>

	<?php echo do_shortcode('[posts_table post_limit="5" post_type=bibliographies columns="image: Photo,cf:author:Author,title:Title,cf: publication_date:Date,cf:editor:Editeur,cf:unique_bibliography_code:Code référence" sort_by="cf:unique_bibliography_code" sort_order="desc" lazy_load="true" rows_per_page="3"]'); ?>

</div>

<?php get_footer();
