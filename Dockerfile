FROM richarvey/nginx-php-fpm

LABEL org.label-schema.vendor="Puppet SE Team" \
      org.label-schema.name="Sample App" \
      org.label-schema.license="Apache-2.0" \
      org.label-schema.version="1.0" \
      org.label-schema.build-date="2018-20-11T00:00:00Z" \
      org.label-schema.schema-version="1.0"

COPY myapp myapp
COPY site.conf /etc/nginx/conf.d/site.conf

RUN mkdir -p /var/www/myapp && \
cp -rf myapp/* /var/www/myapp

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]