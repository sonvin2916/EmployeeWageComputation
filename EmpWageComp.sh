#! /bin/bash 

echo " Welcome to Employee wage computation program"
isPresent=$(( RANDOM%2 ))

if [ $isPresent == 0 ]
then
        echo "Employee is Present"
else
        echo "Employee is not Present"
fi
