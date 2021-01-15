
<?php if ( is_active_sidebar( 'sidebar-widgets' ) ) { ?>
<div id="sidebar" role="complementary">
    <div class="vertical-nav block">
    <?php dynamic_sidebar( 'sidebar-widgets' ); ?>
    </div>
</div>
<?php } ?>