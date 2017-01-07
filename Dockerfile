FROM ubuntu:16.04
MAINTAINER Grant Heffernan <grant@mapzen.com>

ENV TERM vt100

# install dependencies
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y python git

RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:kevinkreiser/prime-server
RUN apt-add-repository -y ppa:valhalla-routing/valhalla
RUN apt-get update -y
RUN apt-get install -y python-valhalla

RUN git clone https://github.com/opentraffic/reporter.git /reporter

ADD ./conf /conf

RUN apt-get clean && \
      rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 8002
CMD ["/reporter/py/matcher_service.py", "/conf/valhalla.json", "0.0.0.0:8002"]
