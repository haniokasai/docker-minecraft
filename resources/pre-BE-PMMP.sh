#!/bin/sh
tar zxvf /minecraft/resources/PHP-7.3-Linux-x86_64.tar.gz /minecraft/bin

CONFIGFILE = /minecraft/server/server.properties
#config
echo "motd=${SRVID} [MiRmPE]" > CONFIGFILE
echo "server-port=19132" > CONFIGFILE
echo "level-type=${WORLDTYPE}" > CONFIGFILE

if [[ ${GAMEMODE} = "creative" ]];then
    GAMEMODE = 1
else
    GAMEMODE = 0
fi
echo "gamemode=${GAMEMODE}" > CONFIGFILE

if [[ -z "${SRVDOMAIN}" ]]; then
	SRVDOMAIN = "0.0.0.0"
fi

echo "server-ip=${SRVDOMAIN}" > CONFIGFILE
echo "language=jpn" > CONFIGFILE
