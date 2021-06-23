</div><?php
      /**
       * The template for displaying single exhibitions
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
      <div class="row">
        <div class="col-md-12">
          <strong>Légende</strong>
          <p><?php the_field('legend'); ?></p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <strong>Code de l'exposition</strong>
          <p><?php the_field('unique_exhibition_code'); ?></p>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <strong>Publiable en ligne</strong>
          <?php if (get_field('publiable')) { ?>
            <p>Oui</p>
          <?php } else { ?>
            <p>Non</p>
          <?php } ?>
        </div>
      </div>
      
    </div>
  </div>

  <hr>
  <div class="row">
    <?php if (get_field('start_date') || get_field('end_date') || get_field('type_of_exhibition')) { ?>
      <div class="columns col-md-12">
        <h2>Informations De Base</h2>
      </div>
    <?php } ?>

    <?php if (get_field('start_date')) { ?>
      <div class="col-md-12">
        <h5>Date</h5>
      </div>
      <div class="col-md-4"><strong>Date de début</strong></div>
      <div class="col-md-8"><span><?php the_field('start_date'); ?></span></div>
    <?php } ?>

    <?php if (get_field('end_date')) { ?>
      <div class="col-md-4"><strong>Date de fin</strong></div>
      <div class="col-md-8"><span><?php the_field('end_date'); ?></span></div>
    <?php } ?>

    <?php if (get_field('type_of_exhibition')) { ?>
      <div class="col-md-4"><strong>Type d'exposition</strong></div>
      <div class="col-md-8"><span><?php the_field('type_of_exhibition'); ?></span></div>
    <?php } ?>


    <div class="col-md-12">
      <h5>Lieu</h5>
    </div>

    <?php if (get_field('address')) { ?>
      <div class="col-md-4"><strong>Adresse</strong></div>
      <div class="col-md-8"><span><?php the_field('address'); ?></span></div>
    <?php } ?>
    <?php if (get_field('structure')) { ?>
      <div class="col-md-4"><strong>Structure/Institutions</strong></div>
      <div class="col-md-8"><span><?php the_field('structure'); ?></span></div>
    <?php } ?>
    <?php if (get_field('city')) { ?>
    <div class="col-md-4"><strong>Ville</strong></div>
    <div class="col-md-8"><span><?php the_field('city'); ?></span></div>
    <?php } ?>
    <?php if (get_field('country')) { ?>
    <div class="col-md-4"><strong>Pays</strong></div>
    <div class="col-md-8"><span><?php the_field('country'); ?></span></div>
    <?php } ?>
    
    <?php if (get_field('description')) { ?>
    <div class="col-md-4"><strong>Description</strong></div>
    <div class="col-md-8"><span><?php the_field('description'); ?></span></div>
    <?php } ?>
    
    <?php if (get_field('curator')) { ?>
    <div class="col-md-4"><strong>Curator</strong></div>
    <div class="col-md-8"><span><?php the_field('curator'); ?></span></div>
    <?php } ?>

    <?php if (get_field('url')) { ?>
    <div class="col-md-4"><strong>URL</strong></div>
    <div class="col-md-8"><span><?php the_field('url'); ?></span></div>
    <?php } ?>

    <?php
    if (have_rows('affiliated_works')) :
    ?>

      <div class="col-md-12">
        <h2>OEUVRES ET SOUS-OEUVRES</h2>
        <?php
        if (have_rows('affiliated_works')) :
          while (have_rows('affiliated_works')) : the_row();
            $works = get_sub_field('works');
            echo "<a href='" . $works['url'] . "'>" . $works['title'] . "</a>";
          endwhile;
        endif; ?>
      </div>

    <?php endif; ?>

    <?php if (get_field('bibliographic_category')) { ?>
      <div class="columns col-md-12">
        <h2>Historique</h2>
      </div>
      <div class="col-md-4"><strong>Réferences bibliographiques</strong></div>
      <div class="col-md-8"><span><?php the_field('bibliographic_category'); ?></span></div>
    <?php } ?>



    <?php if (get_field('public_notes') || get_field('private_notes')) { ?>
      <div class="columns col-md-12">
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

  </div>

  <?php get_template_part('/template-parts/media.tpl'); ?>

</div>
</div>

<?php get_footer();
