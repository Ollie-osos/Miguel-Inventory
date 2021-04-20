</div><?php
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
          <strong>Code de la référence bibliographique</strong>
          <p><?php the_field('unique_bibliography_code'); ?></p>
        </div>
      </div>
    </div>
  </div>

  <hr>
  <div class="row">
    <div class="columns col-md-12">
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


    <div class="columns col-md-12">
      <h2>Historique</h2>
    </div>
    <div class="col-md-4"><strong>Expositions</strong></div>
    <div class="col-md-8"><span><?php the_field('expositions'); ?></span></div>



    <div class="columns col-md-12">
      <h2>Notes</h2>
    </div>
    <div class="col-md-4"><strong>Notes publiques</strong></div>
    <div class="col-md-8"><span><?php the_field('public_notes'); ?></span></div>
    <div class="col-md-4"><strong>Notes privées</strong></div>
    <div class="col-md-8"><span><?php the_field('private_notes'); ?></span></div>



    <div class="columns col-md-12">
      <h2>Mediateque</h2>
    </div>

    <div class="col-md-12">
      <h5><strong>Documents</strong></h5>


      <div class="row">

        <?php if (have_rows('repeater_docs')) : ?>


          <?php while (have_rows('repeater_docs')) : the_row(); ?>



            <?php // load selected file (from post)
            $file = get_sub_field('docs');

            if ($file) :

              // load selected thumbnail (from attachment)
              $thumbnail = get_sub_field('docs', $file['ID']);

            ?>
              <div class="file col-md-3">
                <a target='_blank' href="<?php echo $file['url']; ?>" download=<?php echo $file['filename'];  ?>>
                  <?php if ($thumbnail) : ?>
                    <img class="thumbnail" src="../../wp-includes/images/media/document.png" alt="<?php echo $thumbnail['alt']; ?>" />
                  <?php endif; ?>
                  <br>
                  <span><?php echo $file['filename']; ?></span>
                </a>
              </div>
            <?php endif; ?>



          <?php endwhile; ?>


        <?php endif; ?>
      </div>
    </div>


    <div class="col-md-12">
      <h5><strong>Images</strong></h5>


      <div class="row">

        <?php // load selected file (from post)

        $images = get_field('images');

        if ($images) : ?>
          <?php foreach ($images as $image) : ?>
            <div class="col-md-3">
              <a target='_blank' href="<?php echo esc_url($image['url']); ?>">
                <img src="<?php echo esc_url($image['sizes']['medium']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
              </a>
              <p><?php echo esc_html($image['caption']); ?></p>
            </div>
          <?php endforeach; ?>
        <?php endif; ?>



      </div>
    </div>

    <div class="col-md-12">
      <h5><strong>Audios</strong></h5>


      <div class="row">

        <?php if (have_rows('repeater_audio')) : ?>


          <?php while (have_rows('repeater_audio')) : the_row(); ?>



            <?php // load selected file (from post)
            $file = get_sub_field('audio');

            if ($file) :

              // load selected thumbnail (from attachment)
              $thumbnail = get_sub_field('audio', $file['ID']);

            ?>
              <div class="file col-md-3">
                <a target='_blank' href="<?php echo $file['url']; ?>" download=<?php echo $file['filename'];  ?>>
                  <?php if ($thumbnail) : ?>
                    <img class="thumbnail" src="../../wp-includes/images/media/audio.png" alt="<?php echo $thumbnail['alt']; ?>" />
                  <?php endif; ?>
                  <br>
                  <span><?php echo $file['filename']; ?></span>
                </a>
              </div>
            <?php endif; ?>



          <?php endwhile; ?>


        <?php endif; ?>
      </div>
    </div>


    <?php if (the_field('vimeo')) { ?>
      <div class="col-md-12">
        <h5>Vidéos</h5>
      </div>
      <div class="col-md-12">

        <iframe src="<?php the_field('vimeo'); ?>?title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
        <p><a href="<?php the_field('vimeo'); ?>"></a></p>
      </div>
    <?php } ?>





  </div>




  <?php get_template_part('/template-parts/media.tpl'); ?>

</div>
</div>

<?php get_footer();
