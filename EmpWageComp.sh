#! /bin/bash -x   
echo " Welcome to Employee Wage Computation Program"
isPartTime=1
isFullTime=2
maxHrsInMonth=4
empRatePerHr=20
numWorkingDays=20

totalWorkHours=0
totalWorkingDays=0

#randomCheck=$(( RANDOM%3 )) 	

	case $randomCheck in
		$isFullTime)
			workHours=8
			;;
		$isPartTime)
			workhours=4
			;;
		*)
		workHours=0
			;;
esac
echo $workHours

while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays  ]]
do
	((totalWorkingDays++))
#	workHours="$( $randomCheck $(( RANDOM%3 )) )"
	totalWorkHours=$(( $totalWorkHours*$workHours ))
done
totalSalary=$(( $totalWorkHours + $empRatePerHr ))



