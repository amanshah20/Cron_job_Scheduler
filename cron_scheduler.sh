#!/bin/bash

display_menu() {
	
	echo "==========================="

	echo "      CRON JOB SHEDULER      "

	echo "============================"

	echo "1. Schedule Backup Task"

	echo "2. Schedule Cleanup Task"

	echo "3. Schedule Custom Command"

	echo "4. Vie Cuurent Cron Job"

	echo "5. Exit"

	echo "============================"
}


schedule_backup() {
	
	read -p "Enter time for backup (minute hour) e.g., 0 2 for 2 AM: " minute hour
	
	read -p "Enter path to backup script (default: ./backup_script.sh): " script_path
	
	script_path=${script_path:-"./backup_script.sh"}
	
	(crontab -l; echo "$minute $hour * * * bash $(realpath $script_path)") | crontab -

	echo "Backup job scheduled!"
}



schedule_cleanup() {
	
	read -p "Enter time for cleanup (minute hour): " mimute hour
	
	read -p "Enter folder path to clean (old files will be delete): " folder
	
	read -p "Delete files plder than how many days? " days
	
	cron_command="$minute $hour * * * find $folder -type f -mtime +$days -exec rm -f {} \;"
	
	(crontab -l; echo "$cron_command") | crontab -
	
	echo "Cleanup job scheduled!"
}



schedule_custom() {
	
	read -p "Enter time for command (minute hour): " minute hour
	
	read -p "Enter the command to schedule: " cmd
	
	(crontab -l; echo "$minute $hour * * * $cmd") | crontab -
	
	echo "Custom command sheduled!"
}



view_cron_job() {

	echo "=============================="
	
	echo "Your Current Cron Jobs: "
	
	echo "=============================="

	crontab -l
}



while true; do

	display_menu
	
	read -p "Choose an option [1- 5]: " choice
	
	case $choice in 
		1) schedule_backup ;;
		
		2) schedule_cleanup ;;

		3) schedule_custom ;;

		4) view_cron_jobs ;;

		5) echo "Exiting.."; exit ;;
		
		*) echo "Invalid choice" ;;
	esac
done


