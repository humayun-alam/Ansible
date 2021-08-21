#!/bin/bash

#check if dir exists

dir=/"db-backups/$(hostname)"


if [ -d "$dir" ]
	then 
mysqldump -uroot -ppassword --all-databases > ${dir}/all_databases.sql-$(date +"%d-%m-%y")

	else
echo "It not exist"
echo "creating new directory: $dir"
mkdir -p $dir/
mysqldump -uroot -ppassword --all-databases > ${dir}/all_databases.sql-$(date +"%d-%m-%y")
fi
