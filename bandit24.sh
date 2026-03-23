#!/bin/bash

count=1
while [ $count -lt 10000 ]; do
        digits=""
        if [ $count -lt 10 ]; then
                digits="000$count"
        elif [ $count -lt 100 ]; then
                digits="00$count"
        elif [ $count -lt 1000 ]; then
                digits="0$count"
        elif [ $count -lt 10000 ]; then
                digits="$count"
        fi
        echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 $digits"
        ((count++))
done | nc localhost 30002 > res.txt

grep -v "Wrong" res.txt
