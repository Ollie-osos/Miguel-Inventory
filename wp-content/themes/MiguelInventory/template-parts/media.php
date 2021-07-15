<?php if (get_field('repeater_document') || get_field('repeater_audio') || get_field('images') || get_field('vimeo')) { ?> 
  <div class="media row main-single">
    <div class="col-sm-12">
      <h2>Mediateque</h2>
      <!-- In here, documents only show if is_user_logged_in() and type is not exhibition. -->
    </div>
    <?php
    if (have_rows('repeater_document')) :
      echo "<div class='col-sm-12'><h5>Documents</h5><ul>";
      while (have_rows('repeater_docs')) : the_row();
        $document = get_sub_field('docs');
        echo "<li><a target='_blank' href='" . $document['url'] . "'>" . $document['title'] . "</a></li>";
      endwhile;
      echo "</ul></div>";
    endif;

    if (have_rows('repeater_audio')) :
      echo "<div class='col-sm-12'><h5>Audio Files</h5><ul>";
      while (have_rows('repeater_audio')) : the_row();
        $audio = get_sub_field('audio');
        echo "<li><a target='_blank' href='" . $audio['url'] . "'>" . $audio['title'] . "</a></li>";
      endwhile;
      echo "</ul></div>";
    endif;

    if (get_field('vimeo')) { ?>
      <div class="col-sm-12">
        <h5>Vidéos</h5>
      </div>
      <div class="col-sm-12">
        <iframe src="<?php the_field('vimeo'); ?>?title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
        <p><a href="<?php the_field('vimeo'); ?>"></a></p>
      </div>
    <?php } ?>
  </div>

  <?php if (get_field('images')) { ?>
    <?php $images = get_field('images'); ?>
    <div class="col-sm-12">
      <h5>Images</h5>
      <div class="row slick-carousel">
        <?php foreach ($images as $image) : ?>
          <div class="col-md-3">
            <a target='_blank' href="<?php echo esc_url($image['url']); ?>">
              <img src="<?php echo esc_url($image['sizes']['medium']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
            </a>
            <p><?php echo esc_html($image['caption']); ?></p>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
    <script type="text/javascript">
      $(document).ready(function(){
        $('.slick-carousel').slick({
          slidesToShow: 5,
        });
      });
    </script>
  <?php } ?>
<?php } ?>