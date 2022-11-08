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

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'inception' );

/** MySQL database username */
define( 'DB_USER', 'ojamil' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         '+a#p)!|n|-[w/SJ9v-=CFK48YUMa*~xEVEkJ+_eHh?~}h_Iu[0p8_@ra5h*:XhkP');
define('SECURE_AUTH_KEY',  ':WFB&mhaUytTJ*HtiMN6plWw2i=>188sGQoXdx;m03/)4P7!d0WM:k-CaHF{TYJ|');
define('LOGGED_IN_KEY',    '%*RIiL9NNvYnr.%-auVs96MBGNNUt)G6-nz~|,R@ eBy/-J`)IY,:0+w@drpV?-+');
define('NONCE_KEY',        'LeK6eUo@[HLj!gmPp2+ZEON7q:<s[Ux,_v!F tzz-p+Ti6KjYP=6V]&J(=Y4zW-x');
define('AUTH_SALT',        'f5  N# g:|O4,Tnei.$$sjC0a?c)LL0HGN#mu(/R68{tWE-#?j1X~-o%~6ZIe~7J');
define('SECURE_AUTH_SALT', 'Xm|k+_UPaBKTj&-]QY<T0PF$Kr`od.WMp`/z#_0W%~)S^ ) [D~kgm;XsA^8-Z+N');
define('LOGGED_IN_SALT',   '<.7+Bo1H06K/Ih-2RZR!pJ9D$HPuMRn0OZCs;rA|-0+&!v7em?IU-]}Kf6do_7b;');
define('NONCE_SALT',       'o,qbPgC{jwC~<M=7~JCP--dtT+hV1_XeiaT+vD#6nu|5`]x<PL7?9UhkCzh-p_I6');

/**#@-*/

/**
 * WordPress Database Table prefix.
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