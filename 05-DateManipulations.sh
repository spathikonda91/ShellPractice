#!/bin/bash
START_TIME=$(date +%s)
echo "Script Started execution at : $START_TIME"
sleep 10
END_TIME=$(date +%s)
echo "Script completed at : $STOP_TIME"
TOTAL_TIME=$(($END_TIME-$START_TIME))
echo "Total time taken to execute the script : $TOTAL_TIME"