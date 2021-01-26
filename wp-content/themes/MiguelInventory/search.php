<?php
/**
 * The template for displaying search results pages.
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

get_header(); ?>

<div id="page" role="main" class="col-sm-12 col-md-9">


		<h1><?php _e( 'Search Results for', 'foundationpress' ); ?> "<?php echo get_search_query(); ?>"</h1>

	<?php if ( have_posts() ) : ?>

		<?php while ( have_posts() ) : the_post(); ?>
			<div id="post-<?php the_ID(); ?>" <?php post_class('blogpost-entry'); ?>>
				<header>
					<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
					<?php foundationpress_entry_meta(); ?>
				</header>
				<hr />
			</div>
		<?php endwhile; ?>

		<?php else : ?>
			<p><?php _e( 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', 'foundationpress' ); ?></p>
			<?php get_search_form(); ?>

	<?php endif;?>

	<?php if (function_exists('foundationpress_pagination')) {
				foundationpress_pagination();
			} else if (is_paged()) { ?>
				<nav id="post-nav">
					<div class="post-previous"><?php next_posts_link(__('&larr; Older posts', 'foundationpress')); ?></div>
					<div class="post-next"><?php previous_posts_link(__('Newer posts &rarr;', 'foundationpress')); ?></div>
				</nav>
			<?php } ?>

</div>
<?php get_footer();
