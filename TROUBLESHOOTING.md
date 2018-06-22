# Troubleshooting IKATS

IKATS may run locally with `docker-compose` (for testing and development purpose only, do not use it in production).
This page gives tips to deal with some common errors you can encounter.

## Port 80 is already used by host

If port *80* is already in use, you can customized `.env` file to change the `${GUI_PORT}` variable to a unused one.
This may happen if you already have a webserver running on your host.

## Portainer

If you need to analyze some logs, a convenient way is to use [Portainer](https://portainer.io/).
Portainer is a docker container management UI.

As a quickstart, to run it just do :

```bash
docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v /opt/portainer:/data portainer/portainer
```

Then go to [http://localhost:9000](http://localhost:9000) to reach the UI page

## Checking logs

- Once Portainer is running, go to the container you need to check.
- On the container details, you can see the `Logs` link. Clicking on it will display a page that prints on screen the STDOUT of the container.

## Image logs content

In order to troubleshoot IKATS, interesting logs are :

- **ikats/pybase**
  - Algorithm run status and failure root cause
- **ikats/datamodel**
  - Connection between hibernate and PostgreSQL database
