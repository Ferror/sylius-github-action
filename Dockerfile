FROM sylius/standard:1.11-traditional

WORKDIR /

RUN composer create-project sylius/sylius-standard app

WORKDIR app

RUN composer install --no-scripts --no-interaction --no-dev --no-progress
RUN php bin/console cache:warmup --no-debug --env=prod # --no-optional-warmers

RUN apt-get update && apt-get install -y python2 g++

RUN yarn install --ignore-scripts && yarn add node-sass && yarn build

RUN mkdir -p /app/public/media/image
RUN chmod -R 777 /app/var

ENTRYPOINT []
