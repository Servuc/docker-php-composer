# Docker PHP Composer

## Introduction

Image that permit to use `composer` with latest version of `php` *(CLI)*. 

In fact, it just add `git` and `unzip` commands into image.

## Usage 

### Example with Gitlab.ci and PHPUnit

	stages:
	  - buildAndTestPhp
	
	run-php:
	  image: servuc/docker-php-composer
	  stage: buildAndTestPhp
	  script:
	    - php -r "copy('https://getcomposer.org/composer.phar', 'composer.phar');"
	    - php composer.phar update
	    - vendor/bin/phpunit --configuration phpunit.xml

