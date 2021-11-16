# Macnas Samba 

A Docker-Compose Based Samba Server to replace the shitty macos internal samba 

Update: 
Switched from [dperson/samba](https://hub.docker.com/r/dperson/samba) to [stanback/alpine-samba](https://hub.docker.com/r/stanback/alpine-samba)
because it seems that the dperson image is not relieable enougth. 

Third alternative: [gists/samba-server](https://hub.docker.com/r/gists/samba-server)
 - built automatically by github actions
 - may be more up to date as stanback/alpine-samba
 - not as good examples as stanback/alpine-samba, so => developing config in stanback samba and switch to gists/samba-server

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
