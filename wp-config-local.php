<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

 // s3 bucket controls
 
define( 'AS3CF_SETTINGS', serialize( array(
	'provider' => 'aws',
	'access-key-id' => 'AKIAIDGQQJRECKYEWJ4Q',
	'secret-access-key' => '68Ee08Q/QQsL4Zty+UuzdLgKMrm688zuI6Ow2f9o',
) ) );

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'miguel-inventory-backup' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'pz3~B!D60Y~zA/q&(L@D4-7#)q-H2+i*Ds),>Awk?@)7@( 0pX6WNR`$/K@J85 0' );
define( 'SECURE_AUTH_KEY',  '6!EJ`^8FJO]obwpmIYK^_hu@v}FNhgkNfqc3~Tq1hBK{!tloZeC6H}P!)2x>vg~Q' );
define( 'LOGGED_IN_KEY',    '|;gt2m/@2z<Yl|q/k_}!Di.sJ d7~:p6,PY^+p1[kS0`+Ld@HA7s9g?CJs<mF_ZL' );
define( 'NONCE_KEY',        'ydJUQKog3.U_f2tc[&%*QYmCiWQ6?U#:j~v0ZroFc2vdm}./@_tA`Z/?5HjdnY(&' );
define( 'AUTH_SALT',        'J8(shgY!-EgrpO,f%._kkS;45a0s,_oX%nEa,Oia5]IIRb:~w0Y|/1m1:3VZDA##' );
define( 'SECURE_AUTH_SALT', 'n*-Gfq}McNBn^4WR`[`t>48r.Xy7E<}/Zd(#.KYuK}_7_Dn,z^gMyC+II E* ]:0' );
define( 'LOGGED_IN_SALT',   '4R~C5):Zfi8WQQ:pB)@HWm}(mOLbUKzB#$Zbs5IYtl9Y=pGL}U2!q}kweeKZMY 9' );
define( 'NONCE_SALT',       '?weO^``}J{rju4POn2,c )2cMW8X5[O2!Cl*2u}!CY[d76)Sh4MU0V*j%?+7e5*)' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'mc33_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
