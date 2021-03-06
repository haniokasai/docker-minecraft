#!/bin/bash
echo "Config ftp...." >&1

#config
SSHDFILE=/etc/ssh/sshd_config
echo "Port 22" > ${SSHDFILE}
echo "PermitRootLogin yes" >> ${SSHDFILE}
echo "PasswordAuthentication yes" >> ${SSHDFILE}
echo "PermitEmptyPasswords no" >> ${SSHDFILE}
echo "UseDNS no" >> ${SSHDFILE}
echo "Subsystem sftp internal-sftp" >> ${SSHDFILE}
echo "UseDNS no" >> ${SSHDFILE}

echo "Match Group ftpgroup" >> ${SSHDFILE}
echo "X11Forwarding no" >> ${SSHDFILE}
echo "AllowTcpForwarding no" >> ${SSHDFILE}
echo "ChrootDirectory /minecraft/" >> ${SSHDFILE}
echo "ForceCommand internal-sftp -d /server" >> ${SSHDFILE}