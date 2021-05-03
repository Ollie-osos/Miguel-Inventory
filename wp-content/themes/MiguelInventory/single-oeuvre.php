</div><?php
      /**
       * The template for displaying single oeuvres
       */

      $description = get_field('description');
      $curator = get_field('curator');
      $url = get_field('url');
      $bibliographic_category = get_field('bibliographic_category');

      // globals
      $main_image = get_field('main_image');
      $images = get_field('images');
      $vimeo = get_field('vimeo');

      get_header(); ?>

<div id="page" class="col-md-12" role="main">


  <div class="row">
    <div class="col-md-10">
      <h1><?php the_title(); ?></h1>
      <?php if(get_field('subtitle')) { ?>
        <h2><?php echo get_field('sub_title'); ?></h2>
      <?php } ?>
      <hr class="top-title">
    </div>
    <div class="col-md-2 text-right" id="selection-tools"> 
      <?php echo do_shortcode('[favorite_button]'); ?>
      <?php if (function_exists('pf_show_link')) {
        echo pf_show_link();
      } ?>
    </div>
  </div>
  <div class="row">
    <div class="columns col-md-6">

      <?php the_post_thumbnail('medium'); ?>

    </div>
    <div class="columns col-md-6">



      <?php if (get_field('legend')) { ?>

        <div class="row">
          <div class="col-md-12">
            <strong>Légende</strong>
            <p><?php the_field('legend'); ?></p>
          </div>
        </div>
      <?php } ?>


      <?php if (get_field('unique_work_code')) { ?>

        <div class="row">
          <div class="col-md-12">
            <strong>Numéro d'inventaire</strong>
            <p><?php the_field('unique_work_code'); ?></p>
          </div>
        </div>
      <?php } ?>
      <?php if (get_field('work_realised')) { ?>

        <div class="row">
          <div class="col-md-12">
            <strong>Oeuvre réalisée</strong>
            <p><?php if (get_field('work_realised')) echo 'Oui';
                else 'Non'; ?></p>
          </div>
        </div>
      <?php } ?>

    </div>
  </div>

  <hr>
  <div class="row">
    <div class="columns col-md-12">
      <h2>Informations De Base</h2>
    </div>


    <?php if (get_field('creation_date')) { ?>
      <div class="col-md-4"><strong>Date/Année</strong></div>
      <div class="col-md-8"><span><?php the_field('creation_date'); ?></span></div>
    <?php } ?>

    <div class="col-md-4"><strong>Série</strong></div>
    <div class="col-md-8"><span><?php the_tags(''); ?></span></div>

    <div class="col-md-4"><strong>Catégorie</strong></div>
    <div class="col-md-8"><span><?php the_category(','); ?></span></div>


    <?php if (get_field('dimension_cm') || get_field('dimension_cm_frame') || get_field('dimension_in') || get_field('dimensions_in_frame') || get_field('dimensions_box')) { ?>
      <div class="col-md-12">
        <h5>Dimension</h5>
      </div>
    <?php } ?>

    <?php if (get_field('dimension_cm')) { ?>
      <div class="col-md-4"><strong>Dimension de l'oeuvre (m/cm)</strong></div>
      <div class="col-md-8"><span><?php the_field('dimension_cm'); ?></span></div>
    <?php } ?>

    <?php if (get_field('dimension_cm_frame')) { ?>
      <div class="col-md-4"><strong>Dimension de l'oeuvre avec cadre/socle (m/cm)</strong></div>
      <div class="col-md-8"><span><?php the_field('dimensions_cm_frame'); ?></span></div>
    <?php } ?>

    <?php if (get_field('dimension_in')) { ?>
      <div class="col-md-4"><strong>Dimension de l'oeuvre (feet/in)</strong></div>
      <div class="col-md-8"><span><?php the_field('dimension_in'); ?></span></div>
    <?php } ?>

    <?php if (get_field('dimensions_in_frame')) { ?>
      <div class="col-md-4"><strong>Dimension de l'oeuvre avec cadre/socle (feet/in)</strong></div>
      <div class="col-md-8"><span><?php the_field('dimensions_in_frame'); ?></span></div>
    <?php } ?>

    <?php if (get_field('dimensions_box')) { ?>
      <div class="col-md-4"><strong>Dimension de la boite (m/cm)</strong></div>
      <div class="col-md-8"><span><?php the_field('dimensions_box'); ?></span></div>
    <?php } ?>

    <?php if (get_field('weight_kg') || get_field('weight_packaged') || get_field('type_of_packaging') || get_field('technical_elements') || get_field('etat') || get_field('description') || get_field('edition') || get_field('logicel') || get_field('courtesy') || get_field('url')) { ?>
      <div class="col-md-12">
        <h5>Poids</h5>
      </div>
    <?php } ?>

    <?php if (get_field('weight_kg')) { ?>
      <div class="col-md-4"><strong>Poids de l'oeuvre (kg/g)</strong></div>
      <div class="col-md-8"><span><?php the_field('weight_kg'); ?></span></div>
    <?php } ?>

    <?php if (get_field('weight_packaged')) { ?>
      <div class="col-md-4"><strong>Poids de l'oeuvre emballeé</strong></div>
      <div class="col-md-8"><span><?php the_field('weight_packaged'); ?></span></div>
    <?php } ?>

    <?php if (get_field('type_of_packaging')) { ?>
      <div class="col-md-4"><strong>Type d'emballage</strong></div>
      <div class="col-md-8"><span><?php the_field('type_of_packaging'); ?></span></div>
    <?php } ?>

    <?php if (get_field('technical_elements')) { ?>
      <div class="col-md-4"><strong>Eléments techniques</strong></div>
      <div class="col-md-8"><span><?php the_field('technical_elements'); ?></span></div>
    <?php } ?>

    <?php if (get_field('etat')) { ?>
      <div class="col-md-4"><strong>Etat</strong></div>
      <div class="col-md-8"><span><?php the_field('etat'); ?></span></div>
    <?php } ?>

    <?php if (get_field('description')) { ?>
      <div class="col-md-4"><strong>Description</strong></div>
      <div class="col-md-8"><span><?php the_field('description'); ?></span></div>
    <?php } ?>

    <?php if (get_field('edition')) { ?>
      <div class="col-md-4"><strong>Edition</strong></div>
      <div class="col-md-8"><span><?php the_field('edition'); ?></span></div>
    <?php } ?>

    <?php if (get_field('logicel')) { ?>
      <div class="col-md-4"><strong>Logiciel</strong></div>
      <div class="col-md-8"><span><?php the_field('logicel'); ?></span></div>
    <?php } ?>

    <?php if (get_field('courtesy')) { ?>
      <div class="col-md-4"><strong>Courtesi</strong></div>
      <div class="col-md-8"><span><?php the_field('courtesy'); ?></span></div>
    <?php } ?>

    <?php if (get_field('url')) { ?>
      <div class="col-md-4"><strong>URL</strong></div>
      <div class="col-md-8"><span><?php the_field('url'); ?></span></div>
    <?php } ?>
    
    <?php if (is_user_logged_in()) { ?>
      <?php if (get_field('price_production_euro') || get_field('price_production_us') || get_field('price_assurance_euro') || get_field('price_assurance_us') || get_field('price_sale_euro') || get_field('price_sale_us')) { ?>
        <div class="col-md-12">
          <h2>Prix</h2>
        </div>
      <?php } ?>

      <?php if (get_field('price_production_euro') || get_field('price_production_us')) { ?>
        <div class="col-md-12">
          <h5>Coût de production</h5>
        </div>
      <?php } ?>

      <?php if (get_field('price_production_euro')) { ?>
        <div class="col-md-4"><strong>En euros</strong></div>
        <div class="col-md-8"><span><?php the_field('price_production_euro'); ?></span></div>
      <?php } ?>

      <?php if (get_field('price_production_us')) { ?>
        <div class="col-md-4"><strong>En dollars US</strong></div>
        <div class="col-md-8"><span><?php the_field('price_production_us'); ?></span></div>
      <?php } ?>

      <?php if (get_field('price_assurance_euro') || get_field('price_assurance_us')) { ?>
        <div class="col-md-12">
          <h5>Coût d'assurance</h5>
        </div>
      <?php } ?>

      <?php if (get_field('price_assurance_euro')) { ?>
        <div class="col-md-4"><strong>En euros</strong></div>
        <div class="col-md-8"><span><?php the_field('price_assurance_euro'); ?></span></div>
      <?php } ?>

      <?php if (get_field('price_assurance_us')) { ?>
        <div class="col-md-4"><strong>En dollars US</strong></div>
        <div class="col-md-8"><span><?php the_field('price_assurance_us'); ?></span></div>
      <?php } ?>

      <?php if (get_field('price_sale_euro') || get_field('price_sale_us')) { ?>
        <div class="col-md-12">
          <h5>Prix de vente</h5>
        </div>
      <?php } ?>

      <?php if (get_field('price_sale_euro')) { ?>
        <div class="col-md-4"><strong>En euros</strong></div>
        <div class="col-md-8"><span><?php the_field('price_sale_euro'); ?></span></div>
      <?php } ?>
      <?php if (get_field('price_sale_us')) { ?>
        <div class="col-md-4"><strong>En dollars US</strong></div>
        <div class="col-md-8"><span><?php the_field('price_sale_us'); ?></span></div>
      <?php } ?>
    <?php } ?>

    <?php if (get_field('localisation') || get_field('emplacement')) { ?>
      <div class="columns col-md-12">
        <h2>Localisation</h2>
      </div>
    <?php } ?>

    <?php if (get_field('localisation')) { ?>
      <div class="col-md-4"><strong>Localisation</strong></div>
      <div class="col-md-8"><span><?php the_field('localisation'); ?></span></div>
    <?php } ?>

    <?php if (get_field('emplacement') && is_user_logged_in()) { ?>
      <div class="col-md-4"><strong>Emplacement</strong></div>
      <div class="col-md-8"><span><?php the_field('emplacement'); ?></span></div>
    <?php } ?>


    <?php
    if (get_field('something') && is_user_logged_in()) { ?>
      <div class="col-md-4"><strong>Dates de prêt de l'oeuvre</strong></div>
      <div class="col-md-8"><span><?php the_field(''); ?></span></div>
    <?php } ?>

    <?php if (get_field('collection') && is_user_logged_in()) { ?>
      <div class="col-md-4"><strong>Collection</strong></div>
      <div class="col-md-8"><span><?php the_field('collection'); ?></span></div>
    <?php } ?>

    <?php if (get_field('anonyme') && is_user_logged_in()) { ?>
      <div class="col-md-4"><strong>Anonyme</strong></div>
      <div class="col-md-8"><span><?php the_field('anonyme'); ?></span></div>
    <?php } ?>


    <?php if (get_field('affiliated_exhibitions') || get_field('public_notes') || get_field('private_notes')) { ?>
      <div class="col-md-12">
        <h2>Historique</h2>
      </div>

      <?php
      if (have_rows('affiliated_exhibitions')) :
      ?>
        <div class="row">
          <div class="col-md-12">
            <h2>Sous-Oeuvres</h2>
            <?php
            while (have_rows('affiliated_exhibitions')) : the_row();
              $exhibition = get_sub_field('exhibitions');
              echo "<a href='" . $exhibition['url'] . "'>" . $exhibition['title'] . "</a>";
            endwhile;?>
          </div>
        </div>
      <?php endif; ?>

      <?php if (get_field('public_notes') || get_field('private_notes')) { ?>
        <div class="col-md-12">
          <h2>Notes</h2>
        </div>
      <?php } ?>

      <?php if (get_field('public_notes')) { ?>
        <div class="col-md-4"><strong>Notes publiques</strong></div>
        <div class="col-md-8"><span><?php the_field('public_notes'); ?></span></div>
      <?php } ?>

      <?php if (get_field('private_notes') && is_user_logged_in()) { ?>
        <div class="col-md-4"><strong>Notes privées</strong></div>
        <div class="col-md-8"><span><?php the_field('private_notes'); ?></span></div>
      <?php } ?>
    <?php } ?>
  </div>

  <?php
  if (have_rows('affiliated_works')) :
  ?>
    <div class="row">
      <div class="col-md-12">
        <h2>Sous-Oeuvres</h2>
        <?php
        if (have_rows('affiliated_works')) :
          while (have_rows('affiliated_works')) : the_row();
            $works = get_sub_field('subworks');
            echo "<a href='" . $works['url'] . "'>" . $works['title'] . "</a>";
          endwhile;
        endif; ?>
      </div>
    </div>
  <?php endif; ?>
  <?php get_template_part('/template-parts/media.tpl'); ?>

</div>
</div>

<?php get_footer();
