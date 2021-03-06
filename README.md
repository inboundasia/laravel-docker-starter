Warning: this project is only for local prototyping, please don't use in production.

# Motivation

All sample projects I found are mounting source code from host folder to container volume.  However what I want is all source code put into container, so I make one by myself.

# Purpose

Provide a backend API server docker environment prototype for Frontend Developer.

# Usage

clone this repository and start coding your API server

`docker-compose up -d`

now you can access to http://localhost

after code changed, run `docker-compose down -v && docker-compose build && docker-compose up -d`

to run migration run `docker-compose exec php php artisan migrate`

to destroy all container `docker-compose down -v`

# Ports Expose

| Service | Port |
|---|---|
| Nginx | 80 |
| MySQL | 3306 |
| PHP-fpm | 9000 |

# Core files

* Dockerfile
* docker-compose.yml
* docker/nginx

# Deploy and provide prototype

use command `docker-compose push` to deploy to docker registry

you can check the demo repository and see how to provide prototype

https://github.com/inboundasia/laravel-docker-starter-demo
