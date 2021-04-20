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

get_header();
get_sidebar();
?>

<div id="page" class="main col-sm-8 col-md-9">

  <div class="block block-title">
    <h1 class="archive_title">
      <?php echo get_the_archive_title() ?>
    </h1>
  </div>
  <div class="row">
  <?php if (have_posts()) : ?>
    <?php while (have_posts()) : the_post(); ?>
      <div class="col-sm-12 d-flex archive-result row">
        <?php if (has_post_thumbnail()) { ?>
          <div class="featured-image col-sm-4">
            <a href="<?php the_permalink() ?>" title="<?php the_title_attribute(); ?>"><?php the_post_thumbnail('simple_boostrap_featured'); ?></a>
          </div>
        <?php } ?>
        <div class="col-sm-8">
          <h4><a href="<?php the_permalink() ?>" rel="bookmark" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h4>
        </div>
      </div>
      <?php endwhile; ?>
    <?php else : ?>
    <div class="col-sm-12">
      <h4><?php _e("No items found.", "simple-bootstrap"); ?></h4>
    </div>

  <?php endif; ?>
</div>

<?php get_footer();
