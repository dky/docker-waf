#!/bin/bash

docker run -p 80:80 -p 443:443 \
	--restart=always \
	--name modsec \
	-v $PWD/conf/nginx-custom.conf:/usr/local/nginx/conf/nginx.conf \
	-v $PWD/sites-enabled:/usr/local/nginx/sites-enabled \
	-v $PWD/logs:/usr/local/nginx/logs \
	-d dkyio/modsec-nginx
