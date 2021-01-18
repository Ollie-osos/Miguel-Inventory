<?php
/*
Template Name: Series
*/
get_header(); ?>


<div id="content" class="row">
	<?php 
		$tags = get_tags();
		foreach($tags as $tag) {
			echo '<div class="col-md-4"><a href="' . get_tag_link($tag->term_id) . '">' . $tag->name . '</a></div>';
		}
	?>


<?php get_footer();
