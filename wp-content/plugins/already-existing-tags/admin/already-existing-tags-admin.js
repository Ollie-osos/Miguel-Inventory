jQuery(function($) {
    'use strict';
    if ($('#aet-filter-by-category').is(':checked')) {
        $('#included-categories, #categories-container').removeClass('softened');
        $('#categories-container-mask').removeClass('active');
    } else {
        $('#included-categories, #categories-container').addClass('softened');
        $('#categories-container-mask').addClass('active');
    }
    $('#aet-filter-by-category').on('click', function() {
        $('#included-categories, #categories-container').toggleClass('softened');
        $('#categories-container-mask').toggleClass('active');
    });
});
