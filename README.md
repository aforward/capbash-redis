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

# Deploy to Remote Server #

To push the git script to your server, all you need if the IP or hostname of your server (e.g. 192.167.0.48) and your root password.

```
capbash deploy <IP> tarball
```

For example,

```
capbash deploy 127.0.0.1 tarball
```
