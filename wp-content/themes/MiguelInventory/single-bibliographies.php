</div>
<?php
/**
 * The template for displaying single biblio
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
    <div class="col-md-6">

      <?php the_post_thumbnail('medium'); ?>

    </div>
    <div class="col-md-6">
      <div class="row">
        <div class="col-md-12">
          <strong>Légende</strong>
          <p><?php the_field('legend'); ?></p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <strong>Code de la référence bibliographique</strong>
          <p><?php the_field('unique_bibliography_code'); ?></p>
        </div>
      </div>
    </div>
  </div>

  <hr>
  <div class="row">
    <div class="col-md-12">
      <h2>Informations De Base</h2>
    </div>



    <div class="col-md-4"><strong>Auteur(s) - Nom, Prénom</strong></div>
    <div class="col-md-8"><span><?php the_field('author'); ?></span></div>
    <div class="col-md-4"><strong>Date</strong></div>
    <div class="col-md-8"><span><?php the_field('publication_date'); ?></span></div>

    <div class="col-md-4"><strong>Categorie</strong></div>
    <div class="col-md-8"><span><?php the_category(','); ?></span></div>



    <div class="col-md-4"><strong>Editeur</strong></div>
    <div class="col-md-8"><span><?php the_field('editor'); ?></span></div>
    <div class="col-md-4"><strong>Graphiste</strong></div>
    <div class="col-md-8"><span><?php the_field('graphic_designer'); ?></span></div>
    <div class="col-md-4"><strong>Ville d'édition</strong></div>
    <div class="col-md-8"><span><?php the_field('city_of_the_editor'); ?></span></div>
    <div class="col-md-4"><strong>Langue</strong></div>
    <div class="col-md-8"><span><?php the_field('number_of_pages'); ?></span></div>

    <div class="col-md-4"><strong>Nombre des pages</strong></div>
    <div class="col-md-8"><span><?php the_field('languages'); ?></span></div>

    <div class="col-md-4"><strong>Format</strong></div>
    <div class="col-md-8"><span><?php the_field('format'); ?></span></div>
    <br><br><br>
    <div class="col-md-4"><strong>Description</strong></div>
    <div class="col-md-8"><span><?php the_field('description'); ?></span></div>

    <div class="col-md-4"><strong>ISBN</strong></div>
    <div class="col-md-8"><span><?php the_field('isbn'); ?></span></div>
    <div class="col-md-4"><strong>Prix</strong></div>
    <div class="col-md-8"><span><?php the_field('price'); ?></span></div>
    <div class="col-md-4"><strong>URL</strong></div>
    <div class="col-md-8"><span><?php the_field('url'); ?></span></div>

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


    <div class="col-md-12">
      <h2>Historique</h2>
    </div>
    <div class="col-md-4"><strong>Expositions</strong></div>
    <div class="col-md-8"><span><?php the_field('expositions'); ?></span></div>



    <div class="col-sm-12">
      <h2>Notes</h2>
    </div>
    <div class="col-md-4"><strong>Notes publiques</strong></div>
    <div class="col-md-8"><span><?php the_field('public_notes'); ?></span></div>
    <div class="col-md-4"><strong>Notes privées</strong></div>
    <div class="col-md-8"><span><?php the_field('private_notes'); ?></span></div>

  </div>

  <?php get_template_part('/template-parts/media.tpl'); ?>

</div>
</div>

<?php get_footer();
