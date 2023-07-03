<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'asiwaxiz_redbgdb' );

/** Database username */
define( 'DB_USER', 'asiwaxiz_blogusr' );

/** Database password */
define( 'DB_PASSWORD', 'NZfjNzJZ&0Yw' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'fQ fn}rA<x]KLkSN)l6k{aH2LKe2.D@WbdMX+#hzWPQ:he%g?F]1kd?Gm!qW{wh:' );
define( 'SECURE_AUTH_KEY',  '2?(W,1r[(o:wd&sxbq5os Bg5msMn_|$^1(P:7PP`Bremkm>J:uaB,F?y;g2J!;o' );
define( 'LOGGED_IN_KEY',    ')>OW[{S{>+[jL9vXceUS{.`2s@VukhOru _>B~-`r<qASf2qBRmrB{EW70pFj[]1' );
define( 'NONCE_KEY',        '(M4i~Ya.pc;hRV;[$;aGvF@):IZV+k^fJGs2n!w(<KFm,61i{WpEwpzSMlEALhon' );
define( 'AUTH_SALT',        'Y-V$lG>v5/IyX>9jK`]Nid4vO^OF/}EVv]=y?vRS.XA2^7.Jo.`V`n8))XAK,fj4' );
define( 'SECURE_AUTH_SALT', 'YI*:Dh:>}{DVM-v=fx#+;(5CF=SS>C+$o4q}]gaF+p?c^BGoVt?FO9VMDu3W862m' );
define( 'LOGGED_IN_SALT',   '-Xx?!gFFL>PI-XwN5G!8L8!qWoK.X@5??+}7v70pC:`((TA{V,`4JTGRbP};gL6/' );
define( 'NONCE_SALT',       'y` _q[q8}fYoLnra=WMP+^_r9B`Z /LOBsA1/w`xB<^yX,OC~m[#yqIqhRb#qyk@' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
