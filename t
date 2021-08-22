#!/bin/sh
word=$1
path="/path/to/t_history/.t_history/words"
data=`t_core $1` 
echo "$data">"$path/$word"
echo $data | jq
