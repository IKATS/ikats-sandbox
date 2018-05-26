Troubleshooting IKATS
=====================


IKATS may run locally with `docker-compose` (for testing and development pourposes only, do not use it in production).
This page gives tips to deal with some common errors you can encounter.


## Portainer

If you need to analyze some logs, a convenient way is to use [Portainer](https://portainer.io/).
Portainer is a docker container management UI.

As a quickstart, to run it just do :
```bash
docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v /opt/portainer:/data portainer/portainer
```
Then go to [](https://localhost:9000) to reach the UI page


## Checking logs

- Once Portainer is running, go to the container you need to check.
- On the container details, you can see the `Logs` link. Clicking on it will display a page that prints on screen the STDOUT of the container.


## Image logs content

In order to troubleshoot IKATS, intersting logs are :

- **ikats/pyalgo**
  - Algorithm run status and failure root cause
- **ikats/datamodel**
  - Connection between hibernate and PostgreSQL database
