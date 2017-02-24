from ubuntu:16.04

ENV DEBIAN_FRONTEND="noninteractive"

# update box
RUN apt-get update
RUN apt-get install -y git-core python python-cheetah

RUN git clone git://github.com/midgetspy/Sick-Beard.git /var/app/sickbeard
RUN cd /var/app/sickbeard; git pull

COPY start.sh /var/app/sickbeard/start.sh
RUN chmod +x /var/app/sickbeard/start.sh

RUN useradd --system --uid 1000 -M --shell /usr/sbin/nologin sickbeard

RUN chown -R sickbeard /var/app/sickbeard

# create directories
RUN mkdir /config
RUN chown sickbeard /config
RUN mkdir /data
RUN chown sickbeard /data

#run 
USER sickbeard

CMD ["/var/app/sickbeard/start.sh"]
