#!/bin/bash
echo "run vanilla...." >&1

sh /minecraft/resources/setPerm.sh
sh /minecraft/resources/blockUDP.sh

cd /minecraft/server
chmod 755 /minecraft/bin -R
chown root:root /minecraft/bin -R
echo "残念ながら、Java版の提供を停止します"
#echo "if you do not agree eura, please stop now...." >&1
#echo "eula=true" > eula.txt
#i=(`awk '/^Mem/ {printf("%u", $7);}' <(free -m)`)
#su -l ${SRVID} -c "cd /minecraft/server ; java -Xmx$((i/10*9))m -XX:MaxRAM=`cat /sys/fs/cgroup/memory/memory.limit_in_bytes` -jar /minecraft/bin/mcpc.jar  nogui"
#echo "run vanilla....done" >&1

