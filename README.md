# docker-wordpress
Simple Wordpress Dockerfile for hub.docker.com with minor improvements for the goo1-cloud

### Features
- [x] headers added for better caching

### Build status:
[![Build Status](https://img.shields.io/docker/cloud/automated/andreaskasper/mysqldump.svg)](https://hub.docker.com/r/andreaskasper/docker-wordpress)
[![Build Status](https://img.shields.io/docker/cloud/build/andreaskasper/mysqldump.svg)](https://hub.docker.com/r/andreaskasper/docker-wordpress)

### Bugs & Issues:
![Github Issues](https://img.shields.io/github/issues/andreaskasper/docker-wordpress.svg)
![Code Languages](https://img.shields.io/github/languages/top/andreaskasper/docker-wordpress.svg)

### Running the container :

#### Simple Run

```sh
$ docker run -d andreaskasper/wordpress
```

### Environment Parameters
| Parameter     | Description   | Example       |
| ------------- |:-------------:|:-------------:|
| WORDPRESS_DB_HOST | Name of the MySQL Host | mysql:3306 |
| WORDPRESS_DB_USER | MySQL Username | wordpress_user |
| WORDPRESS_DB_PASSWORD | MySQL Password | 123456;-) |
| WORDPRESS_DB_NAME | MySQL Database Name | worpdress |
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
