#!/bin/bash
cp /main.cf /etc/postfix/main.cf
# /bin/echo "Adding the domain ${1} to postfix main.cf config.";
# echo "myhostname = ${1}" >> /etc/postfix/main.cf

# hostnamectl set-hostname omarrm.com

/bin/echo "CONFIGURANDO TODO.";
echo "disable_plaintext_auth = no" >> /etc/dovecot/conf.d/10-auth.conf
echo "mail_location = maildir:~/Maildir" >> /etc/dovecot/conf.d/10-mail.conf

/bin/echo "REINICIANDO TODO.";
service rsyslog start;
service postfix start;
service dovecot start;
/bin/echo "FINALIZÓ TODO.";
sleep 20;
tail -f /var/log/mail.log