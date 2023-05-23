#!/bin/bash

for i in {1..3}
do
    response=$(curl -s -o /dev/null -w "%{http_code}" http://web-server)
    if [[ "$response" != 2* && "$response" != 3* ]]; then
         echo "$(date): Response code $response received, server is down" >> error.log
    else
        echo "$(date): Response code $response received, server is up"
    fi
    sleep 30
done
