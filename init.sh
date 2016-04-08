#!/bin/bash
if [ "$1" = "deploy" ]; then
  # Proof of concept for local to prod deploys, assumes deis remote already added and environment vars already set,
  # Only run this to get site up to cluster initially, after the intial deploy just run "git push deis master" 
  git checkout $3
  chmod -R 775 ./web/sites/default/
  cp example.settings.php ./web/sites/default/settings.php
  cp example.settings.local.php ./web/sites/default/settings.local.php
  git add .
  git commit -m "$2"
  git push deis "$3"
  deis open
elif [[ "$1" = "db" ]]; then
  export $(cat .env | grep -v ^# | xargs)
  vagrant ssh --command "mysqldump -u $MYSQL_DATABASE_USER -p$MYSQL_DATABASE_PASSWORD --databases $MYSQL_DATABASE_NAME" > $MYSQL_DATABASE_NAME.sql
  kubectl exec mysql -i -- mysql -u $MYSQL_DATABASE_USER -p$MYSQL_DATABASE_PASSWORD -h $MYSQL_DATABASE_HOST $MYSQL_DATABASE_NAME < $MYSQL_DATABASE_NAME.sql
  rm $MYSQL_DATABASE_NAME.sql
else 
  composer install
  composer update
fi
