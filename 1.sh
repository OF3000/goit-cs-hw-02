#!/bin.bash

sites=(
"https://google.com" 
"https://facebook.com" 
"https://twitter.com"
)

lf="web_status.log"

>"$lf"

check_web() {
    if curl -sL --head "$1" | grep "200" > ./null; then
     echo "$1 is UP" | tee -a "$lf"
    else
     echo "$1 is DOWN" | tee -a "$lf"
    fi
}

for item in "${sites[@]}"; do 
 check_web "$item"
done

echo "Result loaded to $lf"