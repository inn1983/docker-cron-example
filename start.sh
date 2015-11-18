#!/bin/bash
docker run -d --net host -v /home/zuiki/log:/log/ -v /etc/network:/etc/network --restart=always cubieboard.info:5000/armv7hf_cron:wificlient

