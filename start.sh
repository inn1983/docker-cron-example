#!/bin/bash
docker run -d --net host -v /home/zuiki/log:/log/ --restart=always cubieboard.info:5000/armv7hf_cron:ddns_send
