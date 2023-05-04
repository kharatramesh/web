FROM centos:7
MAINTAINER " Priar World"
LABEL "App"="Devlopemnt"
RUN yum install httpd -y
RUN yum-config-manager --enable remi-php72 -y
RUN yum install php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo -y
COPY index.php /var/www/html
EXPOSE 80
RUN systemctl enable httpd
CMD ["httpd", "-D", "FOREGROUND"]
