FROM registry.access.redhat.com/ubi8/ubi
USER root
LABEL maintainer="Alfredo Pizarro"
# Update image
RUN yum update --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos -y && rm -rf /var/cache/yum
RUN yum install --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos bind-utils curl iputils iproute  -y && rm -rf /var/cache/yum
ENTRYPOINT ["sleep","infinity"]
