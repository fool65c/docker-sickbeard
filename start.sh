#! /bin/sh

cd /sickbeard
if [ -f /config/config.ini ]
then
	rm -rf /var/app/sickbeard/config.ini
	rm -rf /var/app/sickbeard/sickbeard.db
else
	mv -f /var/app/sickbeard/config.ini /config/config.ini
	mv -f /var/app/sickbeard/sickbeard.db /config/sickbeard.db
fi

ln -sf /config/config.ini /var/app/sickbeard/
ln -sf /config/sickbeard.db /var/app/sickbeard/sickbeard.db

exec /usr/bin/python /var/app/sickbeard/SickBeard.py