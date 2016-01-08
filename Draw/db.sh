#!/bin/bash
echo "Choose What do you want to make " 
select myvar in createDB renameDB dropDB createTable
do
	case $myvar in
		createDB )	
			clear ;
			bash dbactions/createDB.sh
			;;
		renameDB )
			clear ; 
			bash dbactions/renamedb.sh
			;;
		dropDB )
			clear ;  
			bash dbactions/renamedb.sh
			;;

		createTable )
			clear ;  
			bash dbactions/createTable.sh
			;;
		* ) echo "what is $REPLY";
			exit
			;;
	esac

done
