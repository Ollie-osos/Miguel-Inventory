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
		

		<?php do_action( 'foundationpress_layout_end' ); ?>

<?php if ( get_theme_mod( 'wpt_mobile_menu_layout' ) == 'offcanvas' ) : ?>
		</div><!-- Close off-canvas wrapper inner -->
	</div><!-- Close off-canvas wrapper -->
</div><!-- Close off-canvas content wrapper -->
<?php endif; ?>





<footer class="footer container">
    
  <div class="row content-bottom">
    <div class="col-xs-12">
      © Miguel Chevalier 2020
    </div>
	</div>
	
	<div class="row">
		<div class="fixed-inline-right">
			<div style='position: fixed; z-index: 2'>
				<p id="back-top">
					<a href="#top"><img src="<?php echo get_template_directory_uri();?>/assets/images/icons/up-arrow.svg" alt="Scroll To Top"></a>
				</p>
			</div>
		</div>
	</div>

</footer>

<?php wp_footer(); ?>
<?php do_action( 'foundationpress_before_closing_body' ); ?>
</body>
</html>