FROM ubuntu:20.04

# ENV LAST_MODIFIED "2022-03-06 K Ellis"

RUN apt-get update
RUN apt-get install postfix bsd-mailx dovecot-pop3d rsyslog -y
#RUN apt-get upgrade bash -y
RUN sed -i '/imklog/s/^/#/' /etc/rsyslog.conf #dont load imklog module

RUN useradd -m user1 && echo "user1:user1" | chpasswd && adduser user1 sudo
RUN useradd -m user2 && echo "user2:user2" | chpasswd && adduser user2 sudo

ADD conf/main.cf /
ADD conf/startservices.sh /
RUN chmod +x startservices.sh

# SMTP Port
#EXPOSE 25
# POP3 Port
#EXPOSE 110
# IMAP Port
#EXPOSE 143

ENTRYPOINT ["/startservices.sh"]