FROM debian:jessie
RUN apt-get update && apt-get install -y php5-fpm php5-memcached php5-mongo && apt-get clean
COPY php.ini /etc/php5/fpm/
COPY php-fpm.conf /etc/php5/fpm/
COPY www.conf /etc/php5/fpm/pool.d/
EXPOSE 9000
CMD ["php5-fpm", "-F"]

