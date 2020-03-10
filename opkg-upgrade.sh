#!/bin/sh
SUCCESS=10;
NO=20;

logger -s "Update package list"
opkg update
while [ $? -eq 0 ]
do
    if ($(opkg list-upgradable | wc -l) != 0)
    then
        logger -s "Upgrade is starting"
        name=$(opkg list-upgradable | cut -d' ' -f1)
        opkg upgrade $name;
        logger -s "Deleting -opkg file extends"
        rm $(find / -name *-opkg)
        logger -s "Service Restarting"
        for names in $name
        do
           /etc/init.d/${names} restart;
        done
        exit $SUCCESS
    fi
        echo "No upgradable packages"
        exit $NO
done

echo "Check your network settings or internet connectivity"
