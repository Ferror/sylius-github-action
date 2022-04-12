#!/bin/bash

set -m

/usr/bin/supervisord &

sleep 5

service supervisor status

curl localhost:80

# IF APP_ENV test
#
#vendor/bin/phpspec run --ansi -f progress --no-interaction
#
#vendor/bin/phpunit --colors=always
#
#vendor/bin/behat --colors --strict --no-interaction -vvv -f progress --tags="~@javascript&&~@todo&&~@cli&&@managing_catalog_promotions"
#
#vendor/bin/behat --colors --strict --no-interaction -vvv -f progress --tags="~@javascript&&~@todo&&~@cli&&@~managing_catalog_promotions"
#
#vendor/bin/behat --colors --strict --no-interaction -vvv -f progress --tags="@javascript&&~@todo&&~@cli"
