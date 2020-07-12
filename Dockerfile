FROM centos
RUN yum update -y
RUN yum install httpd -y
COPY code/* /var/www/html
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD [ "-D", "FOREGROUND" ]
