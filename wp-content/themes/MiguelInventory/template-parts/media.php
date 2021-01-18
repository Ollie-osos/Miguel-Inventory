<div class="media row">
      <div class="columns small-12">
        <h2>Media</h2>

        
        <?php 
        if( have_rows('repeater_document') ):
          echo "<h5>Documents</h5><ul>";
          while( have_rows('repeater_docs') ) : the_row();
            $document = get_sub_field('docs');
            echo "<li><a href='". $document['url']."'>".$document['title']."</a></li>";
          endwhile;
          echo "</ul>";
        endif; 
        
        if( have_rows('repeater_audio') ):
          echo "<h5>Audio Files</h5><ul>";
          while( have_rows('repeater_audio') ) : the_row();
            $audio = get_sub_field('audio');
            echo "<li><a href='". $audio['url']."'>".$audio['title']."</a></li>";
          endwhile;
          echo "</ul>";
        endif; 
        
        if( $images ): ?>
        <h5>Images</h5>
          <ul>
              <?php foreach( $images as $image ): ?>
                  <li>
                  <img src="<?php echo esc_url($image['sizes']['thumbnail']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
                  </li>
              <?php endforeach; ?>
          </ul>
        <?php endif; ?>
      </div>
    </div>