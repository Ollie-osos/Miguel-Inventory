/*!
 * Posts Data Table
 * Copyright 2016 Barn2 Media Ltd
 */

(function($) {
    
    $(document).ready(function() {
                
        var tables = $('.posts-data-table');
        var adminBarVisible = $('#wpadminbar').length;
        
        tables.each( function() {
    
            var config = { 
                responsive: true,
                processing: true, // display 'processing' indicator when loading
                orderMulti: false, // disable ordering by multiple columns at once
                drawCallback: function() {
                    var api = this.api();
                    if ( api.page.info().pages <= 1 ) {
                        $(this).siblings('div.dataTables_paginate').hide(0);
                    } else {
                        $(this).siblings('div.dataTables_paginate').show(0);
                    }
                }                
            };
            
            if ( posts_table_params.lang_url ) {
                // Set language - defaults to English if not specified                
                config.language = { url: posts_table_params.lang_url };
            }
            
            if ( $(this).data('server-side') && posts_table_params.ajax_url && posts_table_params.ajax_nonce ) {
                config.deferRender = true;
                config.serverSide = true; // use server-side processing (AJAX) to fetch table data
                config.ajax = {
                    url: posts_table_params.ajax_url,
                    type: 'POST',
                    data: {
                        table_id: $(this).attr( 'id' ),
                        action: 'posts_table_load_data' ,
                        _ajax_nonce: posts_table_params.ajax_nonce
                    }
                };
                
                // Disable 'search on click' functionality if loading via AJAX
                $(this).data('click-filter', false);
            }
            
            // Check for table-specific config
            var tableConfig = 'config_' + $(this).attr( 'id' );

            // Merge with global config if found
            if ( window[tableConfig] ) {
                config = $.extend( true, config, window[tableConfig] );
            }            
           
            // Initialise DataTable and return DataTables API instance
            var table = $(this).DataTable( config );
            
            // If scroll offset defined, animate back to top of table on next/previous page event
            $(this).on('page.dt', function() {
                if ( $(this).data('scroll-offset') !== false ) {
                    var tableOffset = $(this).parent().offset().top - $(this).data('scroll-offset');
                    if (adminBarVisible) { // Adjust offset for WP admin bar
                        tableOffset -= 32;
                    }
                    $('html,body').animate({scrollTop: tableOffset}, 300);
                }               
            });
            
            $(this).on('draw.dt', function() {
                // Recalc column size on re-draw (e.g. paging event)                
                table.columns.adjust().responsive.recalc();
                
                // Initialize / re-initialize any media embeds
                //$( window.wp.mediaelement.initialize );  
            });
            
            // If 'search on click' feature enabled then add click handler for links in 
            // category, tag, custom taxonomy and author columns.
            // When one of these is clicked, the table will filter by that value            
            if ( $(this).data('click-filter') ) {
                table.cells( '', '[data-click-filter="true"]' ).every( function() {
                    $( this.node() ).children('a').on('click', function() {
                        table.search( $(this).text() ).draw();
                        return false;
                    });
                });
            }          
            
        }); // each table
        
    }); // end document.ready
    
})(jQuery);