capbash-git
==============

Scripts for installing a redis server

# How to Install #

Install capbash first, more details at:
https://github.com/aforward/capbash

```
curl -s https://raw.githubusercontent.com/aforward/capbash/master/capbash-installer | bash
capbash new YOUR_REPO_ROOT
cd YOUR_REPO_ROOT
```

Now you can install git into your project

```
capbash install tarball
```

# Configurations #

The available configurations include:

```
export LAUNCHER_OWNER=${LAUNCHER_OWNER-$USER}
export LAUNCHER_DIR=${LAUNCHER_DIR-/var/local}
export REDIS_LAUNCHER_DIR=${REDIS_LAUNCHER_DIR-$LAUNCHER_DIR/redis}
export REDIS_LOG_DIR=${REDIS_LOG_DIR-/var/log/redis}
export REDIS_CONFIG_DIR=${REDIS_CONFIG_DIR-$REDIS_LAUNCHER_DIR/config}
export DATA_DIR=${DATA_DIR-/var/local/data}
export REDIS_DATA_DIR=${REDIS_DATA_DIR-$DATA_DIR/redis}
export REDIS_PORT=${REDIS_PORT-6379}
export REDIS_HOST=${REDIS_HOST-"127.0.0.1:"}
export REDIS_VERSION=${REDIS_VERSION-latest}
```


# Deploy to Remote Server #

To push the git script to your server, all you need if the IP or hostname of your server (e.g. 192.167.0.48) and your root password.

```
capbash deploy <IP> tarball
```

For example,

```
capbash deploy 127.0.0.1 tarball
```
