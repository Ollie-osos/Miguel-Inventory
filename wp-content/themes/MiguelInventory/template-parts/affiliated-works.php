<?php 
if (have_rows('affiliated_works')) :
    echo "<ul class='affiliated-works'>";
    while (have_rows('affiliated_works')) : the_row();
    $works = get_sub_field('works');
    
    if($works) {
        $post = $works;
        setup_postdata( $post ); ?>
    
        <li><h5><a href="<?php the_permalink(); ?> "> <?php the_title(); ?> </a></h5></li>
        <?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly
    } 
    
    endwhile;
    echo "</ul>";
endif; 
?>