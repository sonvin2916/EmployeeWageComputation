#! /bin/bash -x
echo " Welcome to Employee Wage Computation Program"
isPartTime=1
isFullTime=2
maxHrsInMonth=100
empRatePerHr=20
numWorkingDays=20

totalEmphr=0
totalWorkingDays=0

function  getWorkHrs()
{
 	 case $1 in
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
	echo $empHrs

}
function getEmpWage()
{
	local empHr=$1
	echo $(($empHr*$empRatePerHr))
}

while [[ $totalEmphr -lt $maxHrsInMonth && $totalWorkingDays -lt numWorkingDays ]] 	
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ))
	empHrs="$( getWorkHrs $empCheck )"
	totalEmphr=$(( $totalEmphr+$empHrs ))
	dailyWage[$totalWorkingDays]="$( getEmpWage $empHrs )"
done

totalSalary=$(( $totalEmphr*$empRatePerHr ))
echo ${dailyWage[@]}
