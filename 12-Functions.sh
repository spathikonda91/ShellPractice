#!/bib/bash

user_id=$(id -u)

if [$user_id -ne 0]; then
    echo "Please run this script with sudo access"
    exit 1
fi

validate(){
    if [$1 -ne 0]; then
        echo "${2} is Failed"
        exit 1
    else
        echo "${2} is Success"            
    fi
}

echo "Proceeding ...."
dnf install nginx -y
validate $? "Nginx Installation"

dnf install mysql -y
validate $? "Mysql Installation"

echo "Still Proceeded .."
