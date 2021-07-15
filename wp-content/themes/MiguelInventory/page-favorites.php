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
get_header();
get_sidebar(); ?>

<div id="page" class="main col-sm-8 col-md-9">
	<h1>Favorites</h1>

	<h4>Generate PDF</h4>
	<form target="_blank" action="<?php echo get_home_url() ?>/favs" method="post" id="models-form" name="models-form">
		<div class="row">
			<div class="col-sm-4">
				<label for="models">Choose a model:</label>
				<select id="models" name="models">
					<option value="galerie">Galerie</option>
					<option value="exposition">Exposition</option>
					<option value="transporteur">Transporteur</option>
				</select>
			</div>
			<div class="col-sm-4">
				<label for="name">Event Name:</label>
				<input type="text" name="eventName"></div>
			<div class="col-sm-4">
				<label for="location">Event Location:</label>
				<input type="text" name="location">
			</div>
		</div>

		<br>
		<input type="submit" class="btn btn-dark" value="Download">
	</form>

	<?php echo do_shortcode('[user_favorites include_links="true" include_buttons="true" include_thumbnails="true"]'); ?>

</div>

<?php get_footer();


// Load field value and convert to numeric timestamp.
// $unixtimestamp = strtotime( get_field('date') );
