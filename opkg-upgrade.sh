#!/bin/sh
SUCCESS=10;
FAIL=20;
logger -s "Update package list"
opkg update
if (echo $? == 0)
then
	if ($(opkg list-upgradable | wc -l) != 0)
	then
        logger -s "Upgrade is starting";
        name=$(opkg list-upgradable | cut -d' ' -f1);
        opkg upgrade $name;
        logger -s "Deleting -opkg file extends";
        rm $(find / -name *-opkg);
        logger -s "Services restarting";
          	for names in $name
          	do
              /etc/init.d/${names} restart;
          	done;
      	exit $SUCCESS;
    	fi
logger -s "Not necessary upgrade packages";
exit $FAIL;
fi