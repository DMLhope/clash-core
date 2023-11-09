#!/bin/bash
set -x
releases_url=https://api.github.com/repos/Kuingsmile/clash-core/releases/latest
url_list=`wget -qO- $releases_url | grep releases/download | cut -f4 -d "\""`

for url in $url_list; do
    wget $url
done
