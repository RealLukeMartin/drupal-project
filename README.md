# Composer template for Drupal projects

[![Build Status](https://travis-ci.org/drupal-composer/drupal-project.svg?branch=8.x)](https://travis-ci.org/drupal-composer/drupal-project)

## Usage

If you need to create a new site using our houston platform. just run this command:
```
git clone https://github.com/poetic/drupal-project.git SITE_NAME
```

Then after cd in to the new site directory and run: 
```
composer install
```

## Cluster Usage

Run: `./init.sh [commit message] [branch]`
To initially pull in the database so configuration sync will work:
`./init.sh db`

Assign environment variables:

`MYSQL_DATABASE_NAME`
`MYSQL_DATABASE_USER`
`MYSQL_DATABASE_PASSWORD`
`MYSQL_DATABASE_HOST`


Deploy!
