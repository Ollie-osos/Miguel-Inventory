=== Posts Table Pro ===
Contributors: andykeith, barn2media
Donate link: http://barn2.co.uk
Tags: posts, table, tables, shortcode, search, sort
Requires at least: 3.6
Tested up to: 4.6.1
Stable tag: 1.3.1
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

A simple plugin to display all your posts in a searchable and sortable table.

== Description ==

Posts Table Pro provides an easy way to list content from your WordPress site in a searchable and sortable data table. 
It supports posts, pages, products, custom post types, featured images, taxonomies, custom fields and much more. 

To use, simply add the shortcode `[posts_table]` to any page. 

Under the hood, it uses the [jQuery DataTables](http://datatables.net/) library to provide the searching and sorting 
features, as well as pagination and responsive layouts. 

== Installation ==

1. Go to Plugins -> Add New -> Upload and select the plugin ZIP file (see link in Purchase Confirmation Email).
1. Activate the plugin
1. Enter your license key under Settings -> Posts Table Pro
1. Go to any post or page and add the shortcode `[posts_table]`
1. See the full list of [shortcode options](https://barn2.co.uk/our-wordpress-plugins/posts-table-pro-documentation/) to configure your table

== Frequently Asked Questions ==

See your Purchase Confirmation Email or visit [the plugin page](https://barn2.co.uk/wordpress-products/posts-table-pro/) and 
[documentation](https://barn2.co.uk/our-wordpress-plugins/posts-table-pro-documentation/)

== Changelog ==

= 1.3.1 =
Release date 23 September 2016

* Add support for all Relational fields in ACF (i.e Page Link, Post Object, Relationship, Taxonomy and User fields)
* Added Dutch translation (credit: Alex Van Haren)
* Fix bug for non-standard date formats for Date Picker fields in ACF
* Fix bug in license key activation

= 1.3 = 
Release date 10 September 2016

* Added full support for Advanced Custom Fields plugin
* Added new shortcode options 'no_posts_message' and 'no_posts_filtered_message' to allow custom messages when no posts are found (English language only)
* Added new shortcode option 'date_format' to allow custom date format to be used - see documentation for examples
* Allow image_size to use format "50x50" as well as "50,50"
* Allow column widths to be specified in pixels as well as a percentage
* Updated EDD Updater which handles the plugin updates
* Updated license key code
* Fixed conflict with Hide Featured Image plugin
* Update language files
* New filters added and other minor tweaks

= 1.2.1 =
Release date 17 August 2016

* Fix bug with widths attribute that was preventing custom column widths being set

= 1.2 =
Release date 11 August 2016

* Allow custom headings to be set for columns (see documentation for examples)
* Allow all post/page content to be shown in the table. To enable this, set content_length to '-1'
* Update to version 1.10.12 of DataTables
* Changed text domain and fixed loading of translation files
* Add settings link to Plugins page
* Fix: javascript bug with 'search on click' feature
* Fix: bug preventing featured images working when AJAX enabled
* Fix: removed use filter_input() for server variables as not always reliable

= 1.1 = 
Release date 23 May 2016

* Added support for featured images and new 'image_size' attribute.

= 1.0 =
Release date 20 May 2016

* Initial release.