# Macnas Samba 

A Docker-Compose Based Samba Server to replace the shitty macos internal samba 

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
