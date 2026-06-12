#!/usr/bin/env bash
# Student attendacne tracker project Factory.
#3. Process management
#I choose to use a function as it is more clean and read for everybody
script_cancel()
{     
      echo "script interrupted"
      cp -r attendance_tracker_${input} attendance_tracker_${input}_archive

      rm -rf attendance_tracker_${input}
      echo "deleted the directory"
      exit 0
}
trap script_cancel SIGINT
# 1.Directory Architecture creating all the directories and files.
read -p "User input:" input
echo "Create the directory attendance_tracker_${input}, using the input"
sleep 2
mkdir attendance_tracker_${input}
echo "I am in the attendance_tracker_${input}"
sleep 2
cp /mnt/c/Users/HP/Downloads/attendance_checker.py attendance_tracker_${input}/attendance_checker.py
mkdir attendance_tracker_${input}/Helpers
echo "Created the Helpers directory and copied assets.csv and config.json into the directory"
sleep 2
cp /mnt/c/Users/HP/Downloads/assets.csv attendance_tracker_${input}/Helpers/assets.csv
cp /mnt/c/Users/HP/Downloads/config.json attendance_tracker_${input}/Helpers/config.json
mkdir attendance_tracker_${input}/reports
cp /mnt/c/Users/HP/Downloads/reports.log attendance_tracker_${input}/reports/reports.log
echo "Just created the reports directory and copied the content of reports.log file into the directory"
#2.Starting the configuration
sleep 2
while 'true'
do
	read -p "what is the new value for Warning: " new_warning
	if (( new_warning )) 2>/dev/null; then
		break
	else
		echo "Please enter a number:"
	fi
done
while 'true'
do 
	read -p "What is the new value for Failure: " new_failure
	if (( new_failure )) 2>/dev/null; then
	    break
	else
		echo "please enter a valid value, a number"
	fi
done
sed -e "s/75/$new_warning/g" -e "s/50/$new_failure/g" ./Helpers/config.json
sleep 2
#4.Environment validation using a Health_Check function
Health_Check()
{
	if python3 --version; then

            echo "python3 is installed"

        else

            echo "Warning:python3 is missing!"

        fi

   echo "checking the Directory structure:"

        if




