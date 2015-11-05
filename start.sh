#!/bin/bash
docker run -d --net host -v /home/log:/log/ -e ENV_DOCKER_DDNS_USER=mydns510358 -e ENV_DOCKER_DDNS_PW=mgiB7VSMZqp --restart=always cubieboard.info:5000/armv7hf_cron:ddns_send
