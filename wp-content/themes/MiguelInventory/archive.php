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

<div id="page" role="main" class="col-sm-8 col-md-9">

    <div class="block block-title">
        <h1 class="archive_title">
            <?php echo get_the_archive_title() ?>
        </h1>
    </div>

    <?php if (have_posts()) : ?>

        <?php while (have_posts()) : the_post(); ?>

            <article id="post-<?php the_ID(); ?>" <?php post_class("block"); ?> role="article">

                <div class="article-header">
                    <h4><a href="<?php the_permalink() ?>" rel="bookmark" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h4>
                </div>
                <?php if (has_post_thumbnail()) { ?>
                    <div class="featured-image col-sm-6">
                        <a href="<?php the_permalink() ?>" title="<?php the_title_attribute(); ?>"><?php the_post_thumbnail('simple_boostrap_featured'); ?></a>
                    </div>
                <?php } ?>


                <section class="post_content">
                    <?php
                    if ($multiple_on_page) {
                        the_excerpt();
                    } else {
                        the_content();
                        wp_link_pages();
                    }
                    ?>
                </section>

            </article>

        <?php endwhile; ?>

    <?php else : ?>

        <article id="post-not-found" class="block">
            <p><?php _e("No items found.", "simple-bootstrap"); ?></p>
        </article>

    <?php endif; ?>
</div>

<?php get_footer();
