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

<div id="page" class="main col-sm-12 col-md-12">
	<h1>Réferences Bibliographiques</h1>
	<div class='float-right'>
		<div class="d-inline-block">
			<h5>Catégorie</h5>
			<?php wp_dropdown_categories(array('show_option_all' => 'All', 'value_field' => 'slug', 'selected' => get_query_var('c'))) ?>
		</div>
		<div class="d-inline-block">
			<h5>Série/Tags</h5>
			<?php wp_dropdown_categories(array('show_option_all' => 'All', 'taxonomy' => 'post_tag', 'value_field' => 'slug', 'hide_empty' => 0, 'selected' => get_query_var('t'), 'name' => 'my_tags')); ?>
		</div>
		<br>
		<button id='reset'>Reset</button>
	</div>

	<?php if (!is_user_logged_in()){ $filter = 'cf="publiable: 1"'; } ?>

	<?php echo do_shortcode('[posts_table rows_per_page="10" post_type=bibliographies columns="image: Photo,title:Title,cf:author:Author,cf: publication_date:Date,category:Catégorie,cf:unique_bibliography_code:Code référence" search_box="top" ' . $filter . ' tag="' . get_query_var('t') . '" category=' . get_query_var('c') . ']'); ?>

</div>

<script>
	$(".postform").change(function() {
		var end = this.value;
		var cat_val = $('#cat').val();
		var tag_val = $('#my_tags').val();

		var url = window.location.href;

		var cat = '';
		var tag = '';

		if (cat_val != 0)
			cat = "c=" + cat_val;
		if (tag_val != 0)
			tag = "t=" + tag_val;

		window.location.href = window.location.href.replace(/[\?#].*|$/, "?" + cat + "&" + tag);
	});


	$("#reset").click(function() {
		$('#cat option:eq(0)').prop('selected', 'selected');
		$('#my_tags option:eq(0)').prop('selected', 'selected');
		window.location.href = window.location.href.replace(/[\?#].*|$/, "");
	});
</script>

<?php get_footer();


// Load field value and convert to numeric timestamp.
// $unixtimestamp = strtotime( get_field('date') );
