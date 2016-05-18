<?php

$databases['default']['default'] = array (
  'database' => $_ENV["MYSQL_DATABASE_NAME"],
  'username' => $_ENV["MYSQL_DATABASE_USER"],
  'password' => $_ENV["MYSQL_DATABASE_PASSWORD"],
  'prefix' => '',
  'host' => $_ENV["MYSQL_DATABASE_HOST"],
  'port' => '3306',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
  'driver' => 'mysql',
);
$settings['install_profile'] = 'houston';
// $schemes = [
//   'localfs' => [ // The name of the stream wrapper. localfs://

//     'driver' => 'local', // The plugin key.

//     'config' => [
//       'root' => 'sites/default/files', // If 'root' is inside the public directory,
//     ], // then files will be served directly. Can be
//     // relative or absolute.

//     // Optional settings that apply to all adapters.

//     'cache' => FALSE, // Cache filesystem metadata. Not necessary,
//     // since this is a local filesystem.

//   ],
//   's3' => [
//     'driver' => 's3',
//     'config' => [
//       'key'    => $_ENV["S3_KEY"],
//       'secret' => $_ENV["S3_SECRET"],
//       'region' => $_ENV["S3_REGION"],
//       'bucket' => $_ENV["S3_BUCKETNAME"],

//       'protocol' => 'http',             // Will be autodetected based on the current request.

//       'prefix' => $_ENV["S3_PREFIX"],  // Directory prefix for all uploaded/viewed files.

//       'cname' => $_ENV["S3_CNAME"],   // A cname that resolves to your bucket. Used for URL generation.
//     ],

//     'cache' => TRUE, // Creates a metadata cache to speed up lookups.
//     'replicate' => 'localfs', // 'replicate' writes to both filesystems, but
//     // reads from this one. Functions as a backup.
//     'serve_js' => TRUE, // Serve Javascript or CSS via this stream wrapper.
//     'serve_css' => TRUE, // This is useful for adapters that function as
//     // CDNs like the S3 adapter.

//   ]
// ];

// $settings['flysystem'] = $schemes;