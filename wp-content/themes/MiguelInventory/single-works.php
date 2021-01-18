<?php
/**
 * The template for displaying all single posts and attachments
 */

get_header(); ?>

<?php while ( have_posts() ) : the_post(); ?>
	
	

	<?php

	$other = new WP_Query(array(
		'post_type' => 'works',
		'posts_per_page' => 3
	));
	get_template_part('template-parts/other-works');

	?>
	
<?php endwhile;?>

<?php get_footer();


