#!/bin/sh

# Courtesy: http://darrensnotebook.blogspot.jp/2016/04/running-gui-apps-in-docker-on-mac-os-x.html?mkt_tok=eyJpIjoiWmpFeU1qUmtNR0l3TXprMSIsInQiOiJsNTJGRWV4amkwNzl0dVNLNHl6WkdHQlh2RWQ4VDRWbFFvdFZuWUR5ZHVXV0FCSXh3YTVLNk5WNDJvOWlXYkdjTVBmY2tDK2x1VU9PZEx0T1wvbXp5MFBweWZHa0E1dTNZRVJKVEdzXC9VSW9JPSJ9
# Courtesy: http://blog.bennycornelissen.nl/bwc-gui-apps-in-docker-on-osx/

#docker build -t firefox Dockerfile.firefox

open -a XQuartz
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" 2> /dev/null &
docker run --rm -it -e DISPLAY=192.168.99.1:0 firefox 2> /dev/null
