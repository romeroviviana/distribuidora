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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'distribuidora');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'TU9tBwciAI-_x*5BRT3)>g&|9A=GWlw2tFpopFVHj4;Q[F3MqOC,BU+egbXb%-X%');
define('SECURE_AUTH_KEY',  'j`/PI!f.#?>oN~@O6A0G,P(F${5n$7;-<j6T*B)(u]vp$S#uoP*6iQ/&gH0!,Bem');
define('LOGGED_IN_KEY',    '-gzG@EB268.MaTLmb>fo31N{]X0=<%t./bjC]q GdXVhsbs]W[)Rb5,pNXZd4vUY');
define('NONCE_KEY',        '/k$XB)mO]Iw;WF-,|xnqK?0 GvLF|/~duD8s=j]7>/Ob:qp#+X~U}9>!|Pu)$Z$v');
define('AUTH_SALT',        'x248jx1PAPX;KW89=bL7l~{Q^|-I_s<WLq=7r:Bq&xa&JCw-^K7%U8=l?N4AWNA+');
define('SECURE_AUTH_SALT', 'NV&gD@oRTx+K*A8/hz#m$SKbmeU*4@4c@#IBK0+t-NuGr.A@Vs/d}sLQ@RBA+Eq<');
define('LOGGED_IN_SALT',   '[XIzpn/B;wv`e{6`%)9|oxCHp~?Bji!<mc1JQh8.ah8dyRh~r_eClD#O{<]q@Kqa');
define('NONCE_SALT',       '`)(}(_aHf^RX;|qBSY!8P]MV^p7a+=^:/5YT*`2%S3h%`eadsoX:v~C/wZ*ku,Gc');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_d';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
