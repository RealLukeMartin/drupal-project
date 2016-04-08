#!/bin/bash
if [ "$1" = "deploy" ]; then
  # Proof of concept for local to prod deploys, assumes deis remote already added and environment vars already set,
  # Only run this to get site up to cluster initially, after the intial deploy just run "git push deis master" 
  git checkout $2
  chmod -R 775 ./web/sites/default/
  cp example.settings.local.php ./web/sites/default/settings.local.php
  printf "if (file_exists(__DIR__ . '/settings.local.php')) {" >> ./web/sites/default/settings.php
  printf "include __DIR__ . '/settings.local.php';" >> ./web/sites/default/settings.php
  printf "}" >> ./web/sites/default/settings.php >> ./web/sites/default/settings.php
  git add .
  git commit -m 'init remote'
  git push deis $2
  echo 'importing database'
  export $(cat .env | grep -v ^# | xargs)
  vagrant ssh --command "mysqldump -u $MYSQL_DATABASE_USER -p$MYSQL_DATABASE_PASSWORD --databases $MYSQL_DATABASE_NAME" > $MYSQL_DATABASE_NAME.sql
  kubectl exec mysql -i -- mysql -u $MYSQL_DATABASE_USER -p$MYSQL_DATABASE_PASSWORD -h $MYSQL_DATABASE_HOST --execute="CREATE DATABASE $MYSQL_DATABASE_NAME;"
  kubectl exec mysql -i -- mysql -u $MYSQL_DATABASE_USER -p$MYSQL_DATABASE_PASSWORD -h $MYSQL_DATABASE_HOST $MYSQL_DATABASE_NAME < $MYSQL_DATABASE_NAME.sql
  rm $MYSQL_DATABASE_NAME.sql
else 
  composer install
  composer update

fi
