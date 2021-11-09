#!/bin/sh
engine=$1
keyword=$2

keyword=`php -r  "echo rawurlencode('$keyword');"`

if [ $engine == "b" ]
then
    w3m https://baidu.com/s?wd=${keyword}
elif [ $engine == "g" ]
then
    w3m https://www.google.com/search?q=${keyword}
elif [ $engine == "et" ]
then
    w3m https://www.etymonline.com/search?q=${keyword}
fi

