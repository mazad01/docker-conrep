FROM fedora:21

MAINTAINER Mohashin Azad <mohashin.azad@yahoo.com>

RUN yum update -y; yum clean all

RUN yum -y install hp-scripting-tools; yum clean all

COPY . /

CMD /bios-config.sh