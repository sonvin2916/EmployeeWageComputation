#! /bin/bash 

echo " Welcome to Employee Wage Computation Program"
isPresent=1
randomCheck=$(( RANDOM%2 ))

if [ $isPresent -eq $randomCheck ]
then
	empRatePerHr=20
	empHrs=8;
	salary=$(( $empHrs*$empRatePerHr ))
        echo "Employee is Present"
else
	salary=0
        echo "Employee is not Present"
fi
echo $salary