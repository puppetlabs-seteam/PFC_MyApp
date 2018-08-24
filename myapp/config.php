<?php
// Database connection parameters
$db_hostname = getenv('MYSQL_SVC');
$db_port     = 3306;
$db_database = getenv('MYSQL_DATABASE');
$db_username = getenv('MYSQL_USER');
$db_password = getenv('MYSQL_PASSWORD');

// Image upload options
$storage_option = "hd";
$hd_folder  = "/var/www/html/uploads";

// Simulate latency, in seconds
$latency = 0;

// Cache configuration
$enable_cache = false;
$cache_server = "dns-or-ip-of-memcached-server";
?>
