#!/bin/sh

APITOKEN=`cat apitoken`

for i in `cat v4domains`
do
	echo "Updating $i (v4)"
	curl "https://ipv4.dynv6.com/api/update?hostname=$i&ipv4=auto&token=${APITOKEN}"
done
