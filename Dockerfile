FROM debian:jessie
MAINTAINER Markus Benning <ich@markusbenning.de>

RUN apt-get update \
  && apt-get install -y curl  apt-transport-https \
  && curl https://markusbenning.de/debian/repo.gpg.key | apt-key add - \
  && curl -o /etc/apt/sources.list.d/markusbenning.list \
     "https://markusbenning.de/debian/markusbenning.list" \
  && apt-get update \
  && apt-get clean

RUN apt-get install -y saftpresse \
  && apt-get clean

CMD ["/usr/bin/saftpresse"]

