#!/bin/bash
composer install
composer update
cp example.settings.php ./web/sites/default/settings.php
cp example.settings.local.php ./web/sites/default/settings.local.php
