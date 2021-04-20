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
	<h1>Sous-Oeuvres</h1>
	<div class='float-right'>
		<div class="d-inline-block">
			<h5>Catégorie</h5>
			<?php wp_dropdown_categories(array('show_option_all' => 'All', 'value_field' => 'slug', 'selected' => get_query_var('c'))) ?>
		</div>
		<div class="d-inline-block">
			<h5>Série</h5>
			<?php wp_dropdown_categories(array('show_option_all' => 'All', 'taxonomy' => 'post_tag', 'value_field' => 'slug', 'hide_empty' => 0, 'selected' => get_query_var('t'), 'name' => 'my_tags')); ?>
		</div>
		<div class="d-inline-block">
			<h5>Oeuvre réalisée</h5>
			<select name="work_real" id="work_real" class="postform">
				<option value="0">All</option>
				<option class="level-0" <?php if (get_query_var('r') == 'oui') echo 'selected' ?> value="oui">Oui</option>
				<option class="level-0" <?php if (get_query_var('r') == 'non') echo 'selected' ?> value="non">Non</option>
			</select>
		</div>

		<br>
		<button id='reset'>Reset</button>
	</div>

	<?php if (get_query_var('r'))
		$filter =  'cf="work_realised:' . get_query_var('r') . '"';
	else
		$filter = '';

	// to add more filters add to the filter string, just use spaces to differenciate. 

	?>
	<?php echo do_shortcode('[posts_table rows_per_page="10" post_type=subworks columns="image: Photo,title:Title,cf:creation_date:Date,category:Catégorie,cf:unique_work_code:Numéro d\'inventaire,cf:work_realised:Oeuvre réalisée,cf:localisation,cf:logicel" search_box="top" ' . $filter . ' tag="' . get_query_var('t') . '" category=' . get_query_var('c') . ']'); ?>

</div>

<script>
		$(".postform").change(function() {
			var end = this.value;
			var cat_val = $('#cat').val();
			var tag_val = $('#my_tags').val();
			var realised_val = $('#work_real').val();

			var url = window.location.href;

			var cat = '';
			var tag = '';
			var realised = '';

			if (cat_val != 0)
				cat = "c=" + cat_val;
			if (tag_val != 0)
				tag = "t=" + tag_val;
			if (realised_val != 0)
				realised = "r=" + realised_val;

			window.location.href = window.location.href.replace(/[\?#].*|$/, "?" + cat + "&" + tag + "&" + realised);
		});


		$("#reset").click(function() {
			$('#cat option:eq(0)').prop('selected', 'selected');
			$('#my_tags option:eq(0)').prop('selected', 'selected');
			$('#work_real option:eq(0)').prop('selected', 'selected');
			window.location.href = window.location.href.replace(/[\?#].*|$/, "");
		});
	</script>

<?php get_footer();


// Load field value and convert to numeric timestamp.
// $unixtimestamp = strtotime( get_field('date') );
