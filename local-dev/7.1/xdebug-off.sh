#!/bin/bash

sed -i '/zend_extension=\/usr\/local\/lib\/php\/extensions\/no-debug-non-zts-20160303\/xdebug.so/d' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
ldconfig