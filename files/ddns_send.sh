#!/bin/bash -x
wget http://www.mydns.jp/login.html --http-user=$ENV_DOCKER_DDNS_USER --http-passwd=$ENV_DOCKER_DDNS_PW -O /dev/null
