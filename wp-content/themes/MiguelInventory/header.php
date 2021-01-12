<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "container" div.
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

?>
<!doctype html>
<html class="no-js" <?php language_attributes(); ?> >
	<head>
		<meta charset="<?php bloginfo( 'charset' ); ?>" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<?php wp_head(); ?>
	</head>
	<body <?php body_class(); ?> >
				
	<header id="navbar" role="banner" class="navbar container navbar-default">
   <div id="navbar" class="row">
      <div class="col-auto mr-auto left">
         <div class="img-col"><a href="index.html" id="logo-title"><img src="../../assets/img/logo_MC_carre.gif" alt="Home"></a></div>
         <div class="text-col">
            <a href="index.html" id="logo-title2"><img src="../../assets/img/logo_MC_nom.gif" class="logo-header"></a>
						<?php foundationpress_top_bar_r(); ?>
            <!-- <ul id="main-menu" class="">
               <li class="main-menu-item"><a routerlinkactive="active" routerlink="/newslist/" ng-reflect-router-link="/newslist/" ng-reflect-router-link-active="active" href="/newslist">News</a></li>
               <li class="main-menu-item"><a routerlinkactive="active" routerlink="/works/" ng-reflect-router-link="/works/" ng-reflect-router-link-active="active" href="/works">Works</a></li>
               <li class="main-menu-item"><a routerlinkactive="active" routerlink="/biography/" ng-reflect-router-link="/biography/" ng-reflect-router-link-active="active" href="/biography">Biography</a></li>
               <li class="main-menu-item"><a routerlinkactive="active" routerlink="/texts/" ng-reflect-router-link="/texts/" ng-reflect-router-link-active="active" href="/texts">Texts</a></li>
               <li class="main-menu-item"><a routerlinkactive="active" routerlink="/publications/" ng-reflect-router-link="/publications/" ng-reflect-router-link-active="active" href="/publications">Publications</a></li>
               <li class="main-menu-item"><a routerlinkactive="active" routerlink="/contact/" ng-reflect-router-link="/contact/" ng-reflect-router-link-active="active" href="/contact">Contact</a></li>
            </ul> -->
         </div>
      </div>
      <div class="col-auto right">
         <div class="link-social"><a href="http://vimeo.com/channels/miguelchevalier" target="_blank"><i class="fab fa-vimeo"></i></a><a href="http://www.facebook.com/Miguel.Chevalier.studio" target="_blank"><i class="fab fa-facebook-square"></i></a><a href="http://twitter.com/ChevalierMiguel" target="_blank"><i class="fab fa-twitter-square"></i></a><a href="https://www.youtube.com/user/claudemossessian" target="_blank"><i class="fab fa-youtube-square"></i></a><a href="https://instagram.com/miguel_chevalier/" target="_blank"><i class="fab fa-instagram-square"></i></a></div>
      </div>
      <div id="menu-icon" class=""><span class="c-hamburger"><span></span></span></div>
   </div>
	</header>

	<div class="main">
		<?php do_action( 'foundationpress_after_header' );


