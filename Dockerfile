FROM centos
RUN yum update -y
RUN yum install httpd -y
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD [ "-D", "FOREGROUND" ]
