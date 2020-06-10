#! /bin/bash -x    
echo " Welcome to Employee Wage Computation Program"
isPartTime=1
isFullTime=2
maxHrsInMonth=100
empRatePerHr=20
numWorkingDays=20

totalEmphr=0
totalWorkingDays=0

while [[ $totalEmphr -lt $maxHrsInMonth && $totalWorkingDays -lt numWorkingDays ]] 	
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ))
	case $empCheck in
		$isFullTime)
			empHrs=8
			;;
		$isPartTime)
			empHrs=4
			;;
		*)
		empHrs=0
			;;
	esac
	totalEmphr=$(( $totalEmphr+$empHrs ))
done

totalSalary=$(( $totalEmphr*$empRatePerHr ))



