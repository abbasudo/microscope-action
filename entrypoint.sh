#!/bin/sh -l

#set -e at the top of your script will make the script exit with an error whenever an error occurs (and is not explicitly handled)
set -eu


composer require imanghafoori/laravel-microscope --dev

php artisan optimize:clear

cp .env.example .env

php artisan $1

echo 'code checks ran successfully'
exit 0

