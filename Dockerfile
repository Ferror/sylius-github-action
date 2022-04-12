FROM sylius/standard:1.11-traditional

ENV APP_ENV=prod
ENV APP_DEBUG=0
ENV DATABASE_URL="mysql://root@127.0.0.1/sylius"

WORKDIR /

RUN composer create-project sylius/sylius-standard app --no-scripts

WORKDIR /app/

RUN composer install --no-scripts --no-interaction --no-dev --no-progress
RUN php bin/console cache:warmup --no-debug --env=prod # --no-optional-warmers

RUN apt-get update && apt-get install -y python2 g++

RUN yarn install --ignore-scripts && yarn add node-sass && yarn build

RUN mkdir -p public/media/image
RUN chmod -R 777 var

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
