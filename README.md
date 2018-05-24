![IKATS Logo](https://ikats.github.io/img/Logo-ikats-icon.png) IKATS Sandbox
=====================

# What is IKATS ?

  IKATS (*I*nnovative tool*K*it for the *A*nalysis of *T*ime *S*eries) is the result of a R&D Data Science Project and is carried out by [CS Systèmes d'Information](http://www.c-s.fr) in collaboration with the [AMA LIG team](http://ama.liglab.fr/).

  IKATS provides a ready to use toolkit for the handling, exploratory analysis and visualization of large volumes of industrial Time Series (TS) data within a single big data framework.

  The project website is hosted at : https://www.ikats.org

  There is also a [community and a commercial support](https://ikats.org/support.html).

# What is the *IKATS Sandbox* (and what it's not)

  * IKATS is primarily designed to work on cluster of machines and not a single desktop.
  * Our IKATS Sandbox repository allows you to use it nevertheless, but user must be aware that its performances are not representative of the tool.
  * Especially, some algorithms which use [Apache Spark](https://spark.apache.org/) could monopolize all desktop resources and make irreversibly freeze it, depending on the amount of data processed at a time.
  * Data persistence: all data imported and generated in IKATS are persisted as long as `/var/lib/ikats/docker_bindings` directory is not manually deleted or altered.

# Installation on Linux

## Prerequisites

The *IKATS Sandbox* is known to work on that system :
* Linux version: Ubuntu 16.04
* 8 Go of RAM
* Dual core CPU @ 2.40GHz
* Docker CE 17.12.1-ce
* docker-compose 1.19.0

## Install steps for Ubuntu

### Tooling

First, you have to get and setup the necessary tooling. If you have already installed on your system Docker, docker-compose and Git tools, you can jump to [Get the Sandbox](#get-the-ikats-sandbox) :

* Follow the [Get Docker CE for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/) documentation
  * Do not forget the [Post-installation steps for Linux](https://docs.docker.com/install/linux/linux-postinstall/)
  * If you are behind a corporate proxy, follow Docker's instructions on how to [configure your Docker daemon](https://docs.docker.com/config/daemon/systemd/#httphttps-proxy])
* Install [Docker Compose](https://docs.docker.com/compose/install/)
* Install GIT, follow the [Git Book instructions](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) or if you are on a debian system, simply enter the command line : `sudo apt-get install git`

### Get the IKATS Sandbox

1. Clone the `ikats-sandbox` GitHub repository
  ```bash
  mkdir ~/SCM
  cd ~/SCM
  git clone https://github.com/IKATS/ikats-sandbox.git
  ```
2. Create the necessary directories for persistent data (our `docker_bindings`)
  ```bash
  sudo mkdir -p /var/lib/ikats/IKATSDATA
  sudo chown -R ${USER}:${USER} /var/lib/ikats/
  ```
3. Get and extract the `latest` release of the file `sandbox_docker_bindings.tar.gz` On https://github.com/IKATS/ikats-sandbox/releases.
  For release `v0.1.0` :
  ```bash
  IKATS_RELEASE=v0.1.0
  wget -P /tmp/ "https://github.com/IKATS/ikats-sandbox/releases/download/${IKATS_RELEASE}/sandbox_docker_bindings.tar.gz"
  tar xzf /tmp/sandbox_docker_bindings.tar.gz -C /var/lib/ikats
  rm /tmp/sandbox_docker_bindings.tar.gz
  ```
4. (optional) Get and extract data needed for [IKATS tutorials](https://ikats.org/tutorials.html)
  ```bash
  IKATS_RELEASE=v0.1.0
  wget -P /tmp/ "https://github.com/IKATS/ikats-sandbox/releases/download/${IKATS_RELEASE}/sandbox_hourly_weather_import_data.zip"
  mkdir /var/lib/ikats/IKATSDATA
  unzip /tmp/sandbox_hourly_weather_import_data.zip -d /var/lib/ikats/IKATSDATA
  rm /tmp/sandbox_hourly_weather_import_data.zip
  ```

## Test your IKATS Sandbox

1. Launch the IKATS containers with Docker Compose
  ```bash
  cd ~/SCM/ikats-sandbox
  docker-compose up
  ```
2. Open to the IKATS Workbench in your browser: [http://localhost](http://localhost)

# Next steps

  * Read the [Getting started tutorial](https://ikats.github.io/doc/tutorials/tuto_workflow.html)
  * You could [import your "little" data](https://ikats.github.io/doc/tutorials/tuto_imports.html). Remind that you are on a limited system.
  * Other tutorials are available on the IKATS website starting from the [How to... section](https://ikats.github.io/howto.html)
  * Troubleshooting:
      * If you're comfortable with the command line, read the [troubleshooting.md](troubleshooting.md) page.
      * Feel free to contact the IKATS team via the [support page](https://ikats.org/support.html)
      * Feel a bug into the [issues tracker](https://github.com/IKATS/ikats-sandbox/issues)
