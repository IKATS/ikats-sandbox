INSTALLATION SANDBOX IKATS on linux desktop:
------------------------------------------------------------

* install docker:
  ```bash
  sudo apt-get install docker-ce
  ```
* install docker-compose:
  ```bash
  sudo curl -L --fail https://github.com/docker/compose/releases/download/1.19.0/run.sh -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  ```
* install git:
  ```bash
  sudo apt-get install git
  ```
* clone github repo ikats-sandbox:
  ```bash
  mkdir ~/SCM
  cd ~/SCM
  git clone https://github.com/IKATS/ikats-sandbox.git
  ```
* set docker proxy configuration (if needed):
  edit docker proxy configuration file and fill in variables HTTP_PROXY, HTTPS_PROXY, NO_PROXY:
  ```bash
  sudo vi /etc/systemd/system/docker.service.d/http-proxy.conf
  ```
* retrieve sandbox_docker_bindings.tar.gz and sandbox_hourly_weather_import_data.zip from last available release on github and unzip them:
  ```bash
  sudo mkdir /var/lib/ikats
  sudo chown -R "user_id":"user_id" /var/lib/ikats/
  cp sandbox_docker_bindings.tar.gz /var/lib/ikats/
  tar xvfz /var/lib/ikats/sandbox_docker_bindings.tar.gz
  cp sandbox_hourly_weather_import_data.zip /var/lib/ikats/IKATSDATA/
  unzip /var/lib/ikats/IKATSDATA/sandbox_hourly_weather_import_data.zip
  ```


STARTUP IKATS:
--------------

* ikats sandbox startup:
  ```bash
  cd ~/SCM/ikats-sandbox
  docker-compose up
  ```
* in a browser enter url: `localhost` => you can now use ikats sandbox
* data import in ikats sandbox (cf. tutorial for hmi details):
  * create directory if not exist: ```sudo mkdir /var/lib/ikats/IKATSDATA/```
  * change owner and write rights if needed: ```sudo chown -R ikats:ikats /var/lib/ikats/```
  * move your data to the directory: ```/var/lib/ikats/IKATSDATA/```
  * use import operator in ikats


PREREQUISITES:
--------------

* linux version: ubuntu 16.04
* docker version: 17.12.1-ce
* docker compose version: 1.19.0
* RAM (recommended): 8 Go
* cpu (recommended): CPU 2.40GHz (dual-core)


WARNINGS:
---------

* Ikats was not designed to work on a single desktop but on a cluster of several powerful machines.
* Ikats sandbox allow you to use it nevertheless, but user must be aware that its performance is not representative of the tool.
* Especially, some algorithms which use Spark tool could monopolize all desktop resources and make irreversibly freeze it, depending on the amount of data processed at a time.
* Data persistence: all data imported and generated in ikats are persisted as long as ``/var/lib/ikats/docker_bindings` directory is not manually deleted or altered.
