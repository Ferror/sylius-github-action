#!/bin/sh

vendor/bin/phpspec run --ansi -f progress --no-interaction

vendor/bin/phpunit --colors=always

vendor/bin/behat --colors --strict --no-interaction -vvv -f progress --tags="~@javascript&&~@todo&&~@cli&&@managing_catalog_promotions"

vendor/bin/behat --colors --strict --no-interaction -vvv -f progress --tags="~@javascript&&~@todo&&~@cli&&@~managing_catalog_promotions"

vendor/bin/behat --colors --strict --no-interaction -vvv -f progress --tags="@javascript&&~@todo&&~@cli"
