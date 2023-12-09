FROM ubuntu:20.04

ENV LAST_MODIFIED "2022-03-06 K Ellis"

RUN hostnamectl set-hostname omarrm.com

RUN apt-get update
RUN apt-get install postfix bsd-mailx dovecot-pop3d rsyslog -y
RUN apt-get upgrade bash -y
RUN sed -i '/imklog/s/^/#/' /etc/rsyslog.conf #dont load imklog module

RUN adduser test1 -p pass1
RUN adduser test2 -p pass2

ADD conf/main.cf /
ADD conf/startservices.sh /
RUN chmod +x startservices.sh

ENTRYPOINT ["/startservices.sh"]