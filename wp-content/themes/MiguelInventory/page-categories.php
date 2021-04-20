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

get_sidebar();

?>

<div id="page" class="main col-sm-10 col-md-9">

	<h1><?php the_title() ?></h1>

	<div class="list-group">
		<?php $categories = get_categories();
		foreach ($categories as $category) {
			echo '<a class="list-group-item list-group-item-action" href="' . get_category_link($category->term_id) . '">' . $category->name . '</a>';
		} ?>
	</div>
</div>

<?php get_footer();


// Load field value and convert to numeric timestamp.
// $unixtimestamp = strtotime( get_field('date') );
