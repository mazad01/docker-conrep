FROM centos:latest

MAINTAINER Mohashin Azad <mohashin.azad@yahoo.com>

COPY . /

RUN rpm -i /assets/hp-scripting-tools-10.02-3.rhel6.x86_64.rpm \
  /assets/hp-health-9.50-1628.32.rhel6.x86_64.rpm \
  /assets/pciutils-3.2.1-4.el7.x86_64.rpm \
  /assets/pciutils-libs-3.2.1-4.el7.x86_64.rpm \
  /assets/hwdata-0.252-8.1.el7.x86_64.rpm

RUN ln -fs /data/conrep_5.48.xml /opt/hp/hp-scripting-tools/etc/conrep.xml

WORKDIR /opt/hp/hp-scripting-tools/etc/

CMD /bios-config.sh
