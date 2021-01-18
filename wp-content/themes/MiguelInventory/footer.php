<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the "off-canvas-wrap" div and all content after.
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

?>
</div>
</div>

<footer class="footer container">
	<div id="back-top">
		<img src="<?php echo get_template_directory_uri(); ?>/assets/img/up-arrow.svg" alt="Scroll To Top">
	</div>
	<div class="row content-bottom">
		<div class="col-xs-12">
			© Miguel Chevalier <?php echo date('Y'); ?>
		</div>
	</div>



</footer>

<?php wp_footer(); ?>
<?php do_action('foundationpress_before_closing_body'); ?>
</body>

</html>