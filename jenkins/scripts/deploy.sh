#!/usr/bin/env sh

set -x
docker run -d -p 80:80 --name my-apache-php-app -v c:\\...\\jenkins-php-selenium-test\\src:https://github.com/ng-wl/jenkins-php-selenium-test php:7.2-apache
sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'

