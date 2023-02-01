<?php

define( 'DB_NAME', 'DATABASE_NAME' );

/** MySQL database username */
define( 'DB_USER', 'DATABASE_USER' );

/** MySQL database password */
define( 'DB_PASSWORD', 'DATABASE_PASS' );

/** MySQL hostname */
define( 'DB_HOST', 'DATABASE_HOST' );

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
define('AUTH_KEY',         ':9H}|{y}0>E/dlHwQxH_42q[liZC@nR7?SfO|H6t7s6S%p12(!6,DB[](gHYt-QV');
define('SECURE_AUTH_KEY',  'qA}ELL ?`TJA:%KO>Ksv:&K(]FyAICQ_Zj34n(J,irPoR-5:7=L+1s/Bk{4-svU2');
define('LOGGED_IN_KEY',    '<mu.@#SioXFX2Mlf?cA$YCyEi2*Aa-}#dxPI([^1J>O-+=%EfdN/%vwtzy klZYa');
define('NONCE_KEY',        'S3 L}qE/7WB-$pmi}7e~?v-&nP8]w71!#}zn28jkVR41SutUQj-/OKd$-uaP#4h5');
define('AUTH_SALT',        'OyLMxy).@qa8|IzjCWn{aL7g=L#n{V^bh s%u<`{SFQH:e*M+hX31Q]sH$kN*xRl');
define('SECURE_AUTH_SALT', '?]I+?_4Vie;2s<%GZk({O2l%OqL9L/]4PkKqfERBQ!{ma+&&F$(pxU*AsXo]{3(w');
define('LOGGED_IN_SALT',   '})$x#K7@WjD7Xpo<ghMn!X7hZP=IeO9(*Lbq7iW];60gp_I%*d:e!{k.#kT5qm=X');
define('NONCE_SALT',       'CX+sm^R_Z=S?!:;uAkbk^1-_?V09Gee8}C>,.(+3mwk.M_5/i.P[K:J{$8NA>H_5');

/**#@-*/

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );
