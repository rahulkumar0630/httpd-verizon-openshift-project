FROM ubi7/ubi:7.7

MAINTAINER Tester Prog <tester@myprog.com>

LABEL description="Example Apache container on UBI 7 for Openshift"

RUN yum install -y httpd && \
    yum clean all

RUN echo "This is an example of a containerized httpd application deployed on Openshift."

EXPOSE 8080

CMD ["httpd", "-D", "FOREGROUND"]

