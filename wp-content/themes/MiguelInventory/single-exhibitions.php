<?php
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
	
<div id="page" role="main">
	<article class="main-content">

    <div class="row">
      <div class="col-sm-6">
        <h1><?php the_title();?></h1>
        <h2><?php the_field('sub_title'); ?></h2>
        <img src="<?php echo $main_image['url']; ?>" alt="<?php echo $main_image['alt']; ?>">
      </div>
      <div class="col-sm-6">
        <div>
        <strong>Legend</strong>
        <p><?php the_field('legend'); ?></p>
        </div>
      </div>
    </div>
    
    <hr>
    <div class="row">
      <div class="col-sm-12">
        <h2>Informations De Base</h2>
        Exhibition Code: <?php the_field('unique_exhibition_code'); ?><br>
        Type d'exposition: <?php the_field('type_of_exhibition'); ?><br>
        Location: <br>
        <?php the_field('address'); ?>, <?php the_field('city'); ?>, <?php the_field('country'); ?>
        Structure/Institution: <br>
        <?php the_field('structure '); ?>

        Date<br>
        Date de Debut : <?php the_field('start_date'); ?><br>
        Date de fin : <?php the_field('end_date'); ?>

        Note<br>
        Public Notes:  <?php the_field('public_notes'); ?><br>
        Private Notes:  <?php the_field('private_notes'); ?><br>
      </div>
    </div>

    <div class="row">
      <div class="col-sm-12">
        <h2>Affiliated Work</h2>
        <?php 
        if( have_rows('affiliated_works') ):
          while( have_rows('affiliated_works') ) : the_row();
            $works = get_sub_field('works');
            echo "<a href='". $works['url']."'>".$works['title']."</a>";
          endwhile;
        endif; ?>
      </div>
    </div>

    <div class="media row">
      <div class="col-sm-12">
        <h2>Media</h2>

        
        <?php 
        if( have_rows('repeater_document') ):
          echo "<h5>Documents</h5>";
          while( have_rows('repeater_document') ) : the_row();
            $document = get_sub_field('document');
            echo "<a href='". $document['url']."'>".$document['title']."</a>";
          endwhile;
        endif; 
        
        if( have_rows('repeater_audio') ):
          echo "<h5>Audio Files</h5>";
          while( have_rows('repeater_audio') ) : the_row();
            $audio = get_sub_field('audio');
            echo "<a href='". $audio['url']."'>".$audio['title']."</a>";
          endwhile;
        endif; 
        
        if( $images ): ?>
        <h5>Images</h5>
          <ul>
              <?php foreach( $images as $image_id ): ?>
                  <li>
                      <?php echo wp_get_attachment_image( $image_id, "medium" ); ?>
                  </li>
              <?php endforeach; ?>
          </ul>
        <?php endif; ?>
      </div>
    </div>
   
  </article>
</div>

<?php get_footer();
  