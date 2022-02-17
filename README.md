# docker-wordpress
Simple Wordpress Dockerfile for hub.docker.com with minor improvements for the goo1-cloud

### Features
- [x] headers added for better caching
- [x] Auto-CI to eliminate security issues 

### Build status:
[![Build Status](https://img.shields.io/docker/cloud/automated/andreaskasper/wordpress.svg)](https://hub.docker.com/r/andreaskasper/wordpress)
[![Build Status](https://img.shields.io/docker/cloud/build/andreaskasper/wordpress.svg)](https://hub.docker.com/r/andreaskasper/wordpress)
![Build Status](https://img.shields.io/docker/image-size/andreaskasper/wordpress/latest)

### Bugs & Issues:
![Github Issues](https://img.shields.io/github/issues/andreaskasper/docker-wordpress.svg)
![Code Languages](https://img.shields.io/github/languages/top/andreaskasper/docker-wordpress.svg)

### Stats:
![Docker Pulls](https://img.shields.io/docker/pulls/andreaskasper/wordpress.svg)

### Running the container :

#### Simple Run

```sh
$ docker run -d andreaskasper/wordpress
```

#### Docker-Compose

```YAML
version 2

services:
  wordpress:
    image: andreaskasper/wordpress:latest
    restart: always
    ports:
      - 8080:80
    volumes:
      - ./data/:/var/www/html/wp-content/
    links:
      - database:db
  database:
    image: mariadb
    restart: always
```


### Environment Parameters
| Parameter     | Description   | Example       |
| ------------- |:-------------:|:-------------:|
| WORDPRESS_DB_HOST | Name of the MySQL Host | mysql:3306 |
| WORDPRESS_DB_USER | MySQL Username | wordpress_user |
| WORDPRESS_DB_PASSWORD | MySQL Password | 123456;-) |
| WORDPRESS_DB_NAME | MySQL Database Name | worpdress |
| WORDPRESS_AUTH_KEY | | |
| WORDPRESS_SECURE_AUTH_KEY | | |
| WORDPRESS_LOGGED_IN_KEY | | |
| WORDPRESS_NONCE_KEY | | |
| WORDPRESS_AUTH_SALT | | |
| WORDPRESS_SECURE_AUTH_SALT | | |
| WORDPRESS_LOGGED_IN_SALT | | |
| WORDPRESS_NONCE_SALT | | |
| WORDPRESS_DEBUG | | 1 |
| WORDPRESS_CONFIG_EXTRA | Extra Configurations for wp-config.php | define('FS_METHOD', 'direct'); |


### Folders:
| Folder        | Description   |
| ------------- |:-------------:|
| /var/www/html/wp-content/ | wp-content datadir |


### Steps
- [x] Build a base test image to test this build process (Travis/Docker)
- [ ] Build tests
- [ ] Gnomes
- [ ] Profit

### support the projects :hammer_and_wrench:
* [![donate via Patreon](https://img.shields.io/badge/Donate-Patreon-green.svg)](https://www.patreon.com/AndreasKasper)
* [![donate via PayPal](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/AndreasKasper)
