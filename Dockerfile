FROM centos:7

MAINTAINER maieve

ADD entrypoint /usr/bin/entrypoint

ENTRYPOINT entrypoint