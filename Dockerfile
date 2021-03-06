FROM centos:7.6.1810

MAINTAINER Mohashin Azad <mohashin.azad@yahoo.com>

# This build arg must match the version at
# data/conrep_${CONREP_INPUT_VERSION}.xml in this git repo.
ARG CONREP_INPUT_VERSION=5.48

# Optional build args.
ARG BUILD_DATE
ARG VCS_REF

LABEL \
    org.label-schema.name="quay.io/mazad01/conrep" \
    org.label-schema.description="Run conrep in a container to configure HP BIOS" \
    org.label-schema.url="https://github.com/mazad01/docker-conrep" \
    org.label-schema.vcs-url="https://github.com/mazad01/docker-conrep.git" \
    org.label-schema.docker.dockerfile="/Dockerfile" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.license="HP Proliant Essentials Software End User License Agreement" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.vcs-ref=${VCS_REF} \
    org.label-schema.version=${CONREP_INPUT_VERSION}

COPY . /

RUN yum update -y \
      && rm -fr /var/cache/yum

RUN yum install -y \
      hp-health-10.90-1873.8.rhel7 \
      hp-scripting-tools-11.30-29.rhel7 \
      hwdata \
      pciutils \
      pciutils-libs \
      && \
    rm -fr /var/cache/yum \
      && \
    ln -fs /data/conrep_${CONREP_INPUT_VERSION}.xml /opt/hp/hp-scripting-tools/etc/conrep.xml

WORKDIR /opt/hp/hp-scripting-tools/etc/

CMD /bios-config.sh
