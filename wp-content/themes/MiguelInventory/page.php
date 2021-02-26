<?php get_header(); ?>

	<div class="col-md-12">

		<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
		
	                 <?php the_content(); ?>
		
		<?php endwhile; ?>		
		
		<?php else : ?>
		
		<article id="post-not-found" class="block">
		    <p></p>
		</article>
		
		<?php endif; ?>
		</div>

<?php get_footer(); ?>