#! /bin/bash

echo "--------------------------------------------------------------------------------------------------------------"
echo "                         Select a Database Server"
echo "                             1.MySQL Server"
echo "                             2.PostgreSQL Server"
echo "--------------------------------------------------------------------------------------------------------------"

read sql_number

if [ $sql_number -eq "1" ]; then
	mysql_start="sudo systemctl start mysqld"
	mysql_status="sudo systemctl status mysqld"
	mysql_stop="sudo systemctl stop mysqld"

	echo "--------------------------------------------------------------------------------------------------------------"
	echo "                                  Select A Task"
	echo "                                   1.Start MySQL"
	echo "                                   2.Stop MySQL"
	echo "                                   3.MySQL status"
	echo "--------------------------------------------------------------------------------------------------------------"

	read selection_number_1

	if [ $selection_number_1 -eq "1" ]; then
		eval "${mysql_start}"
		eval "${mysql_status}"

	elif [ $selection_number_1 -eq "2" ]; then
		eval "${mysql_stop}"
		eval "${mysql_status}"

	elif [ $selection_number_1 -eq "3" ]; then
		eval "${mysql_status}"

	else
		exit

	fi

elif [ $sql_number -eq "2" ]; then

	postgresql_start="sudo systemctl start postgresql"
	postgresql_stop="sudo systemctl stop postgresql"
	postgresql_status="sudo systemctl status postgresql"

	echo "--------------------------------------------------------------------------------------------------------------"
	echo "                                      Select A Task"
	echo "                                       1.Start PostgreSQL"
	echo "                                       2.Stop PostgreSQL"
	echo "                                       3.PostgreSQL status"
	echo "--------------------------------------------------------------------------------------------------------------"

	read selection_number_2

	if [ $selection_number_2 -eq "1" ]; then
		eval "${postgresql_start}"
		eval "${postgresql_status}"

	elif [ $selection_number_2 -eq "2" ]; then
		eval "${postgresql_stop}"
		eval "${postgresql_status}"

	elif [ $selection_number_2 -eq "3" ]; then
		eval "${postgresql_status}"

	else
		exit

	fi

else
	exit

fi
