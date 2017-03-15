FROM pacur/centos-6

MAINTAINER HOG <hogseruj1@gmail.com>

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install \
      httpd \
      php-5.3.3-14 \
    && yum clean all


RUN chkconfig httpd on && \
    service httpd restart

VOLUME ["/var/www"]

EXPOSE 80
