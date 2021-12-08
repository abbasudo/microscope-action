#!/bin/sh -l

#set -e at the top of your script will make the script exit with an error whenever an error occurs (and is not explicitly handled)
set -eu


composer require imanghafoori/laravel-microscope

php artisan optimize

php artisan $2

echo 'check success'
exit 0