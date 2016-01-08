#!bin/bash
typeset -i col
echo "choose DataBase that you want to create table in it :";
select db in `ls DB`
do
	case $db in
		$db )  
			read -p "Enter table Name : " tblname
			touch DB/$db/$tblname
			read -p "Enter the number of column :: " col
			
			for (( i = 1; i <= $col; i++ )); 
			do
				read -p "Enter name of column no.$i : " nameCol[i]
				read -p "Enter Data Type of Column no.$i : " dataType[i]
				echo -n  -e ${nameCol[i]} " | " >> DB/$db/$tblname
			done
		;;
	* ) echo "what is $REPLY";
		exit
		;;
	esac
done