# Composer template for Drupal projects

## Local Usage

#####


`./init.sh`

## Cluster Usage
Copy the .env.example file to .env and assign the environment variables specific to your project, they include:

* `MYSQL_DATABASE_NAME`
* `MYSQL_DATABASE_USER`
* `MYSQL_DATABASE_PASSWORD`
* `MYSQL_DATABASE_HOST`
* `S3_KEY`
* `S3_SECRET`
* `S3_REGION`
* `S3_BUCKETNAME`
* `S3_PREFIX`


Create remote for site to push to: `deis create [sitename]`

Push environment variables: `deis config:push`

Initialize site: `./init.sh deploy [branch]`

Go to your site: `deis open`

---

After running the init.sh script to initialize, all future deploys will use

`git push deis [branch]`
