#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Please try with sudo access to proceed"
    exit 1
fi

echo "Proceeding"

dnf install nginx -y

if [ $? -ne 0]; then
    echo "Nginx installation is failed"
    exit 1;
else
    echo "Nginx installation is success"
fi

dnf install mysqll -y

if [ $? -ne 0 ]; then
    echo "SQL installation is failed"
    exit 1;
else
    echo "SQL installation is success"
fi

echo "Still Proceeding"