#!/bin/bash
cd ./data
rm *.dat
cd ..
./RUN >outputPC.log 2>errorPC.log & export pid="$!"
echo "$pid $(date)" >> process_ID.pid  
echo "$pid $(date)"
