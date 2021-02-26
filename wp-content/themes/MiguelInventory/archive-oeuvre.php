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

<div id="page" role="main" class="col-sm-12 col-md-12">

	<h1>Oeuvres/Works</h1>
	<div class='float-right'>

		<?php wp_dropdown_categories(array('show_option_all' => 'All', 'value_field' => 'slug', 'selected' => get_query_var('c'))) ?>
		<?php wp_dropdown_categories(array('show_option_all' => 'All', 'taxonomy' => 'post_tag', 'value_field' => 'slug', 'hide_empty' => 0, 'selected' => get_query_var('t'), 'name' => 'my_tags')); ?>

		<br>
		<button id='reset'>Reset</button>
	</div>

	<?php echo do_shortcode('[posts_table rows_per_page="10" post_type=oeuvre columns="image: &nbsp;,title:Title,cf:creation_date:Date,category:Catégorie,tags:Série,cf:unique_work_code:Numéro d\'inventaire" search_box="top" tag="' . get_query_var('t') . '" category=' . get_query_var('c') . ']'); ?>

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

</div>

<?php get_footer();
