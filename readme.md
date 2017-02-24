Runs a sickbeard server

User sickbeard is id 1000 this is used on all docker containers to keep access simple
```
RUN useradd --system --uid 10000 -M --shell /usr/sbin/nologin sickbeard
```

You must export the Config dir and data dir before running

```bash
 export SICKBEARD_CONFIG_DIR=/var/lib/application/sickbeard
 export SICKBEARD_DATA_DIR=/srv
 ```

 To start run the following
 ```bash
 docker-compose up -d
 ```

 This service is listening on port 10002