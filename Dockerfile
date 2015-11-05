FROM resin/armv7hf-buildpack-deps:wheezy

RUN apt-get update
RUN apt-get -y install rsyslog

# Add these lines to your own Dockerfile
RUN mkdir /log
ADD files/etc/crontab /etc/crontab
ADD files/bin/start-cron.sh /usr/bin/start-cron.sh
ADD files/br-monitor.sh /run.sh
RUN chmod +x /usr/bin/start-cron.sh
RUN touch /var/log/cron.log

RUN apt-get install -y net-tools

CMD /usr/bin/start-cron.sh
