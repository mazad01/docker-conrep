FROM centos:latest

MAINTAINER Mohashin Azad <mohashin.azad@yahoo.com>

COPY . /

RUN rpm -i /bin/hp-scripting-tools-10.02-3.rhel6.x86_64.rpm \
  /bin/hp-health-9.50-1628.32.rhel6.x86_64.rpm \
  /bin/pciutils-3.2.1-4.el7.x86_64.rpm \
  /bin/pciutils-libs-3.2.1-4.el7.x86_64.rpm \
  /bin/hwdata-0.252-8.1.el7.x86_64.rpm

WORKDIR /opt/hp/hp-scripting-tools/etc/

CMD /bios-config.sh
