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

<div class="col-md-2">
	<div class="fixed">
		
	<?php global $current_user; wp_get_current_user(); ?>
<?php if ( is_user_logged_in() ) { 
 echo '<h5>' . $current_user->display_name . "</h5>"; } 
else { wp_loginout(); } ?>
	<a href="<?php echo get_home_url() ?>/my-account">My account</a><br>
	<a href="<?php echo get_home_url() ?>/favorites">Favorites</a><br>
	<a href="<?php echo get_home_url() ?>/wp-login.php?action=logout">Logout</a>
<div class="mt-5">
	<h5>Agenda</h5>
	<?php get_calendar(); ?>
</div>
</div>
	</div>

<div id="page" role="main" class="col-sm-8 col-md-8">

<h1><?php the_title() ?></h1>


<?php $tags = get_tags();
foreach($tags as $tag) {
   echo '<h3 class="mt-5"><a href="' . get_tag_link($tag->term_id) . '">' . $tag->name . '</a></h3>';
} ?>



</div>
<div class="col-md-2">
<div class="fixed">
<h5>Recherche</h5>
			<?php get_search_form(); ?>
</div>
	
</div>


<?php get_footer();


// Load field value and convert to numeric timestamp.
// $unixtimestamp = strtotime( get_field('date') );
