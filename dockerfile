FROM apache2
WORKDIR var/www/html
RUN rm index.html
RUN touch index.html
RUN echo "this is the new container" >index.html
EXPOSE 80
CMD ["httpd", "-d", "foreground;"]
