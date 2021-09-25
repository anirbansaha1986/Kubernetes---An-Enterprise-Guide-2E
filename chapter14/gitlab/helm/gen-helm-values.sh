#!/bin/bash

export hostip=$(hostname  -I | cut -f1 -d' ' | sed 's/[.]/-/g')

sed "s/IPADDR/$hostip/g" < gitlab-values.yaml > /tmp/gitlab-values.yaml