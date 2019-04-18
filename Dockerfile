FROM httpd:2.4

COPY ./chatoverflow/api/target/scala-2.12/api /usr/local/apache2/htdocs/api
COPY ./chatoverflow/target/scala-2.12/api /usr/local/apache2/htdocs/chatoverflow
COPY ./chatoverflow/plugins-public/ajavaplugin/target/scala-2.12/api /usr/local/apache2/htdocs/plugins-public/ajavaplugin
COPY ./chatoverflow/plugins-public/anothertest/target/scala-2.12/api /usr/local/apache2/htdocs/plugins-public/anothertest
COPY ./chatoverflow/plugins-public/simpletest/target/scala-2.12/api /usr/local/apache2/htdocs/plugins-public/simpletest

COPY ./linkings.html /usr/local/apache2/htdocs/index.html

RUN chown -R www-data:www-data /usr/local/apache2/htdocs

EXPOSE 80
