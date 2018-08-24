FROM richarvey/nginx-php-fpm:1.5.5

LABEL org.label-schema.vendor="Puppet SE Team" \
      org.label-schema.name="Sample App" \
      org.label-schema.license="Apache-2.0" \
      org.label-schema.version="1.0" \
      org.label-schema.build-date="2018-20-11T00:00:00Z" \
      org.label-schema.schema-version="1.0"

COPY myapp/ /var/www/html/

EXPOSE 80

VOLUME ["/var/www/html/uploads"]

STOPSIGNAL SIGTERM

CMD ["/start.sh"]
