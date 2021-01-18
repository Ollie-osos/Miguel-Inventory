<?php
/*
Template Name: Categories
*/
get_header(); ?>


<div id="content" class="row">
	<?php 
		$categories = get_categories();
		foreach($categories as $category) {
			echo '<div class="col-md-4"><a href="' . get_category_link($category->term_id) . '">' . $category->name . '</a></div>';
		}
	?>


<?php get_footer();
