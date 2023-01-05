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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '${MYSQL_DATABASE}' );

/** Database username */
define( 'DB_USER', '${MYSQL_USER}' );

/** Database password */
define( 'DB_PASSWORD', '${MYSQL_PASSWORD}' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         ':9H}|{y}0>E/dlHwQxH_42q[liZC@nR7?SfO|H6t7s6S%p12(!6,DB[](gHYt-QV');
define('SECURE_AUTH_KEY',  'qA}ELL ?`TJA:%KO>Ksv:&K(]FyAICQ_Zj34n(J,irPoR-5:7=L+1s/Bk{4-svU2');
define('LOGGED_IN_KEY',    '<mu.@#SioXFX2Mlf?cA$YCyEi2*Aa-}#dxPI([^1J>O-+=%EfdN/%vwtzy klZYa');
define('NONCE_KEY',        'S3 L}qE/7WB-$pmi}7e~?v-&nP8]w71!#}zn28jkVR41SutUQj-/OKd$-uaP#4h5');
define('AUTH_SALT',        'OyLMxy).@qa8|IzjCWn{aL7g=L#n{V^bh s%u<`{SFQH:e*M+hX31Q]sH$kN*xRl');
define('SECURE_AUTH_SALT', '?]I+?_4Vie;2s<%GZk({O2l%OqL9L/]4PkKqfERBQ!{ma+&&F$(pxU*AsXo]{3(w');
define('LOGGED_IN_SALT',   '})$x#K7@WjD7Xpo<ghMn!X7hZP=IeO9(*Lbq7iW];60gp_I%*d:e!{k.#kT5qm=X');
define('NONCE_SALT',       'CX+sm^R_Z=S?!:;uAkbk^1-_?V09Gee8}C>,.(+3mwk.M_5/i.P[K:J{$8NA>H_5');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

