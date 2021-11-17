# Macnas Samba 

A Docker-Compose Based Samba Server to replace the shitty macos internal samba 

Links: 
- [dperson/samba](https://hub.docker.com/r/dperson/samba)
- [dperson/samba Dockerfile](https://hub.docker.com/r/dperson/samba/dockerfile)

## Alternatives 

- [Baremetal: Homebrew samba](https://formulae.brew.sh/formula/samba)
    - [Samba Wiki](https://wiki.samba.org/index.php/Main_Page)
    - `brew install samba`
    - `sudo sh < <(curl -s https://gist.githubusercontent.com/756445638/5c2095ce3eabf7f164a54be58c4ef375/raw/cd6d7ffb47da2418e6522f4bab7327c7ef9f5fd2/setup.sh)`

## Local Dev Setup 

1. Clone Repo 
2. Setup doppler cli (Project: macnas-samba > dev config)

## Troubleshooting 

## MacOS can't connect to localhost smb server 

This may be forbidden by MacOS, 
going-around hack: 

```
# sets an alias on the loopback adapter
sudo ifconfig lo0 127.0.0.2 alias up

# use this new ip in docker-compose port forwardings: 127.0.0.2:139:139

```

=> Did not work, starting docker compose with this was not possible
