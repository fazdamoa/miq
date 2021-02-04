#!/usr/bin/env bash
set -eo pipefail

_stopnow() {
  test -f stopnow && echo "Stopping!" && rm stopnow && exit 0 || return 0
}

while true
do
    _stopnow
    # This actually works, lol
    result=$(curl -s https://allocation.miq.govt.nz/portal/ | grep data-arrival-dates | cut -c38- | sed 's/.$//' | sed 's/.$//')
      
    #echo $result
    array=()
    IFS='_' read -ra ADDR <<< "$result"
    for i in "${ADDR[@]}"; do
        # You can change the months to search here
        gooddate=$(echo $i | grep '2021-03\|2021-04')
        if [ "$gooddate" ]
        then 

            array+=("$i")
            echo ""
            tput setaf 2; echo "SLOTS AVAILABLE!!!!!!!!!"
            tput setaf 2; echo "SLOTS AVAILABLE!!!!!!!!!"
            tput setaf 2; echo "SLOTS AVAILABLE!!!!!!!!!"
            tput setaf 2; echo "SLOTS AVAILABLE!!!!!!!!!"
            echo ""
            echo $gooddate
            echo ""
        fi
    done

done