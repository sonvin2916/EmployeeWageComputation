#! /bin/bash -x

echo " Welcome to Employee Wage Computation Program"
isPartTime=1
isFullTime=2
maxHrsInMonth=4
empRatePerHr=20
numWorkingDays=20
totalWorkHours=0

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours()
{  	
	case $1 in
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
}
function calDailyWage()
{
	local workHrs=$1
	wage=$(( $workHrs*$empRatePerHr))
	echo $wage
}
while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays  ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $(( RANDOM%3 )) )"
	totalWorkHours=$(( $totalWorkHours+$workHours ))
	empDailyWage[$totalWorkingDays]="$( calDailyWage $workHours )"
done
totalSalary=$(( $totalWorkHours*$empRatePerHr ))
echo  $totalSalary


