#!/bin/bash
# crontab * * * * * /Users/xu_hu/Developer/XuHu/Scripts/run_redirect_server.sh >> /Users/xu_hu/Developer/XuHu/Scripts/redirect_server_nohup.out 2>&1
BASEPATH=$(cd `dirname $0`; pwd)
pid=`ps -ef | grep node | grep redirect.js | awk '{print $2}'`
if [ -z "$pid" ]
then
    echo "server is not running"
    nohup /usr/local/bin/node $BASEPATH/redirect_server.js > $BASEPATH/redirect_server_nohup.out &
else
    echo "server is running"
fi
