#!/bin/bash

__nameserver=9.9.9.9

if [[ "${NAMESERVER}" != "" ]] ; then
    __nameserver=${NAMESERVER}
fi 

#set name server when executing this script
echo nameserver ${__nameserver} > /etc/resolv.conf

/bin/bash