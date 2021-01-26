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

<div id="page" role="main" class="col-sm-12 col-md-9">
		<h1>Ouvres/Works</h1>
		<?php if (have_posts()) : ?>
			<table class="table thead-light table-hover main-list" id="table__works">
				<thead>
					<tr>
						<th></th>
						<th>Title</th>
						<th>Dates</th>
						<th>Categorie</th>
						<th>Series</th>
						<th>inventory number</th>
					</tr>
				</thead>
				<tbody>	
					<?php while (have_posts()) : the_post(); ?>
					<tr>
						<td>
							<a href="<?php the_permalink(); ?>">
							<?php if (!isset($img) || $img == ""){
								echo '<img src="'.get_template_directory_uri().'/assets/img/logo_MC_carre.gif" alt="no image found, placeholder used">';
								// print_r($img);
							}else{
								echo '<img src="'.$img['url'].'" alt="'.$img['alt'].'"></a></td>';
							}
							?>
							</a>
						</td>
						<td><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></td>
						<td><a href="<?php the_permalink(); ?>"><?php the_field('start_date'); ?> - <?php the_field('end_date'); ?></a></td>
						<td><a href="<?php the_permalink(); ?>"><?php if(get_categories()){echo get_categories();}else{ echo 'N/A';} ?></a></td>
						<td><a href="<?php the_permalink(); ?>"><?php if(get_tags()){echo get_tags();}else{ echo 'N/A';} ?></a></td>
						<td><a href="<?php the_permalink(); ?>"><?php the_field('unique_works_code'); ?></a></td>
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

<?php get_footer();


// Load field value and convert to numeric timestamp.
// $unixtimestamp = strtotime( get_field('date') );
