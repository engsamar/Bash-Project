#!/bin/bash
echo "Choose What do you want to make " 
select myvar in selects update insert delete
do
	case $myvar in
		selects )	
			read -p "Enter Name of DataBase " dbname
			bash tablactions/select.sh $dbname
			;;
		update ) bash tablactions/update.sh
			;;
		insert )  tablactions/update.sh
			;;

		delete )  
			read -p "Enter table Name: " tblname
			bash tablactions/delete.sh $tblname
			;;
		* ) echo "what is $REPLY";
			exit
			;;
	esac

done
