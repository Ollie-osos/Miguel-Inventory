<div class="col-md-3 col-sm-2">
	<h5>Recherche</h5>
	<?php get_search_form(); ?>
	<br>
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