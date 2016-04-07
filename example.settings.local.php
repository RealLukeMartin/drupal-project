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