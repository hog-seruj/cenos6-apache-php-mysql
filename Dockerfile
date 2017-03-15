FROM pacur/centos-6

MAINTAINER HOG hogseruj1@gmail.com

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install \
      httpd \
      php-bcmath.x86_64 \
      php-cli.x86_64 \
      php-common.x86_64 \
      php-dba.x86_64 \
      php-devel.x86_64 \
      php-embedded.x86_64 \
      php-enchant.x86_64 \
      php-gd.x86_64 \
      php-imap.x86_64 \
    && yum clean all


RUN chkconfig httpd on && \
    service httpd restart

VOLUME ["/var/www"]

EXPOSE 80
