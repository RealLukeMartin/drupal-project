# Composer template for Drupal projects

[![Build Status](https://travis-ci.org/drupal-composer/drupal-project.svg?branch=8.x)](https://travis-ci.org/drupal-composer/drupal-project)

## Usage

If you need to create a new site using our houston platform. just run this command:

`./init.sh`

## Cluster Usage

Initialize remote cluster environment: 

Assign environment variables in a .env file:

`MYSQL_DATABASE_NAME`
`MYSQL_DATABASE_USER`
`MYSQL_DATABASE_PASSWORD`
`MYSQL_DATABASE_HOST`

Create remote for site to push to: `deis create [sitename]`

Set environment variables: `deis config:push`

Initialize site: `./init.sh deploy [branch]`

Go to your site: `deis open`

---

After running the init.sh script to initialize, all future deploys will use

`git push deis [branch]`

Sync config from local to remote with Drupal's Configuration Synchronization

