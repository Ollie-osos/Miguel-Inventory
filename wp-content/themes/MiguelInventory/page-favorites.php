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
	<?php global $current_user;
	wp_get_current_user(); ?>
	<?php if (is_user_logged_in()) {
		echo '<h5>' . $current_user->display_name . "</h5>";
	} else {
		wp_loginout();
	} ?>
	<a href="<?php echo get_home_url() ?>/my-account">My account</a><br>
	<a href="<?php echo get_home_url() ?>/favorites">Favorites</a><br>
	<a href="<?php echo get_home_url() ?>/wp-login.php?action=logout">Logout</a>
</div>



<div id="page" class="main col-sm- col-md-8">
	<h1>Favorites</h1>

	<h4>Generate PDF</h4>
	<form target="_blank" action="<?php echo get_home_url() ?>/favs" method="post" id="models-form" name="models-form">
		<label for="models">Choose a model:</label>
		<select id="models" name="models">
			<option value="galerie">Galerie</option>
			<option value="exposition">Exposition</option>
			<option value="transporteur">Transporteur</option>
		</select>
		<input type="submit" value="Download">
	</form>


	<?php echo do_shortcode('[user_favorites include_links="true" include_buttons="true" include_thumbnails="true"]'); ?>



</div>

<?php get_footer();


// Load field value and convert to numeric timestamp.
// $unixtimestamp = strtotime( get_field('date') );
