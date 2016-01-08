#!/bin/bash
clear ;
echo "Choose DataBase if u want to make DDL command or Table To make DML command " 
select myvar in DataBase Table showDB
do
	case $myvar in 
		DataBase )	
			clear ;
			bash Draw/db.sh
			;;
		Table ) 
			clear ;
			bash Draw/table.sh
			;;
		showDB )
			clear ;
			bash Draw/show.sh
			;;

		* ) echo "what is $REPLY";
			exit
			;;
	esac

done
