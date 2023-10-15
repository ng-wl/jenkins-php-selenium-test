#!/usr/bin/env sh

set -x

## Doesn't work!!!
#docker run -d -p 80:80 --name my-apache-php-app -v /home/Desktop/ICT3203_Lab/8/jenkins-php-selenium-test/src:/var/www/html php:7.2-apache

## Workaround. /home/Desktop/ICT3203_Lab/8/jenkins-php-selenium-test/src/ is inside the jenkins-blueocean container, which is mapped to the physical machine.
docker run -d -p 80:80 --name my-apache-php-app php:7.2-apache
docker cp /home/Desktop/ICT3203_Lab/8/jenkins-php-selenium-test/src/. my-apache-php-app:/var/www/html

sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'

