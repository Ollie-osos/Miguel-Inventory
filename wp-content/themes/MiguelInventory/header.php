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
<html class="no-js" <?php language_attributes(); ?>>

<head>
   <meta charset="<?php bloginfo('charset'); ?>" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

   <header id="navbar" role="banner" class="navbar container-fluid navbar-default">
      <div id="navbar" class="row">
         <div class="col-auto mr-auto left">
            <div class="img-col"><a href="<?php echo get_home_url(); ?>" id="logo-title"><img src="<?php echo get_template_directory_uri() ?>/assets/img/logo_MC_carre.gif" alt="Home"></a></div>
            <div class="text-col">
               <a href="<?php echo get_home_url(); ?>" id="logo-title2"><img src="<?php echo get_template_directory_uri() ?>/assets/img/logo_MC_nom.gif" class="logo-header"></a>

               <nav class="navbar navbar-expand-lg navbar-light" id="navbar">
                  <?php foundationpress_top_bar_r(); ?>
               </nav>

            </div>

         </div>

         <div class="col-auto right">
            <div class="link-social"><a href="http://vimeo.com/channels/miguelchevalier" target="_blank"><i class="fab fa-vimeo"></i></a><a href="http://www.facebook.com/Miguel.Chevalier.studio" target="_blank"><i class="fab fa-facebook-square"></i></a><a href="http://twitter.com/ChevalierMiguel" target="_blank"><i class="fab fa-twitter-square"></i></a><a href="https://www.youtube.com/user/claudemossessian" target="_blank"><i class="fab fa-youtube-square"></i></a><a href="https://instagram.com/miguel_chevalier/" target="_blank"><i class="fab fa-instagram-square"></i></a></div>
         </div>
         <!-- <div id="menu-icon" class=""><span class="c-hamburger"><span></span></span></div> -->
      </div>
   </header>

   <div class="main container-fluid">
      <div class="row">