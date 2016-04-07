#!/bin/bash
composer install
composer update
cp example.settings.php ./web/sites/default/settings.php
if [ "$1" = "deploy"  ]; then
# Proof of concept for local to prod deploys, assumes deis remote already added and environment vars already set
cp example.settings.local.php ./web/sites/default/settings.local.php
git add .
git commit -m "$2"
git push deis "$3"
rm ./web/sites/default/settings.local.php
fi
