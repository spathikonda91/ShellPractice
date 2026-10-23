#!/bin/bash

echo "All arguments passed in run time : $@"
echo "No.of run time aruguments passed : $#"
echo "second varibales passed : $2"
echo "Script Name : $0"
echo "Real Path : $(realpath $0)"
echo "Who is running the script : $USER"
echo "current directory of the script :$PWD"
echo "Home directory of the current user :$HOME"
echo "Process ID -PID of the current script : $$"
sleep 10&
echo "PID of the command running in background now :: $!"
wait $!
echo "Line number :: $LINENO"
echo "previos command exit status : $?"


