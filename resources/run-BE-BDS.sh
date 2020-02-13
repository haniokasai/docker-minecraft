#!/bin/sh
echo "run bds...." >&1

WDIR=/minecraft/resources


rm -rf /minecraft/bin/bds/*

rm -rf /minecraft/bin/bedrock_server
rm -rf /minecraft/bin/libCrypto.so

mv ${WDIR}/bdssync/bedrock_server /minecraft/bin/bedrock_server
mv ${WDIR}/bdssync/libCrypto.so /usr/local/lib/libCrypto.so

chmod 755 /usr/local/lib/libCrypto.so

rsync ${WDIR}/bdssync/ /minecraft/server/ -aq --delete --exclude worlds --exclude server.properties --exclude ops.json --exclude whitelist.json --exclude permissions.json --exclude backup --exclude bedrock_server --exclude libCrypto.so

sh /minecraft/resources/setPerm.sh
sh /minecraft/resources/blockTCP.sh

cd /minecraft/server

LD_LIBRARY_PATH=/usr/local/lib /minecraft/bin/bedrock_server

echo "run bds....done" >&1
