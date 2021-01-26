
<?php if ( is_active_sidebar( 'sidebar-widgets' ) ) { ?>
<div id="sidebar" role="complementary" class="col-md-3 d-sm-none d-md-flex">
    <div class="vertical-nav block">
    <?php dynamic_sidebar( 'sidebar-widgets' ); ?>
    </div>
</div>
<?php } ?>