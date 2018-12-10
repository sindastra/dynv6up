#!/bin/sh

APITOKEN=`cat apitoken`

for i in `cat v6domains`
do
	echo "Updating $i (v6)"
	curl "https://ipv6.dynv6.com/api/update?hostname=$i&ipv6=auto&token=${APITOKEN}"
done
