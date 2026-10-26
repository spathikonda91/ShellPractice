#!/bib/bash

logs_folder="/var/log/ShellPractice"
logs_file="${logs_folder}/${0}.log"
user_id=$(id -u)

mkdir -p $logs_folder

echo "Script Started execution at $(date +"%F %T")" &>> $logs_file

if [$user_id -ne 0]; then
    echo "Please run this script with sudo access"
    exit 1
fi

validate(){
    if [$1 -ne 0]; then
        echo "${2} is Failed" | tee -a $logs_file
        exit 1
    else
        echo "${2} is Success" | tee -a $logs_file           
    fi
}


for package in $@
do 
    dnf list install $package
    if [ $? -ne 0 ]; then
        echo  "Going to install : ${package}"
        dnf install $package -y &>> $logs_file
        validate $? "Installing ${package}" 
    else 
        echo "${package} already installed... SKIPPING"

    fi    
done    
echo "Script Started completed at $(date +"%F %T")" &>> $logs_file





































