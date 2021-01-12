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

<div id="page" role="main">
	<div class="main-content">
		<h1>Exhibitions</h1>
		<?php if (have_posts()) : ?>
			<table class="hover">
				<thead>
					<tr>
						<th></th>
						<th>Title</th>
						<th>Location</th>
						<th>Dates</th>
						<th>Exhibition number</th>
					</tr>
				</thead>
				<tbody>	
					<?php while (have_posts()) : the_post(); ?>
					<tr>
						<td><a href="<?php the_permalink(); ?>"><img src="<?php echo $img['url'];?>" alt="<?php echo $img['alt'];?>"></a></td>
						<td><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></td>
						<td><a href="<?php the_permalink(); ?>"><?php the_field('location'); ?></a></td>
						<td><a href="<?php the_permalink(); ?>"><?php the_field('start_date'); ?> - <?php the_field('end_date'); ?></a></td>
						<td><a href="<?php the_permalink(); ?>"><?php the_field('unique_exhibition_code'); ?></a></td>
					</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
			<?php /* Display navigation to next/previous pages when applicable */ ?>
			<?php if (function_exists('foundationpress_pagination')) {
				foundationpress_pagination();
			} else if (is_paged()) { ?>
				<nav id="post-nav">
					<div class="post-previous"><?php next_posts_link(__('&larr; Older posts', 'foundationpress')); ?></div>
					<div class="post-next"><?php previous_posts_link(__('Newer posts &rarr;', 'foundationpress')); ?></div>
				</nav>
			<?php } ?>
		<?php endif; ?>
	</div>

</div>

<?php get_footer();


// Load field value and convert to numeric timestamp.
// $unixtimestamp = strtotime( get_field('date') );
