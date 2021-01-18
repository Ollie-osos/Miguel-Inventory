<?php get_header(); ?>

<div id="content" class="row">

		<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
		
	
		
		<?php endwhile; ?>		
		
		<?php else : ?>
		
		<article id="post-not-found" class="block">
		    <p></p>
		</article>
		
		<?php endif; ?>
		
</div>

<?php get_footer(); ?>