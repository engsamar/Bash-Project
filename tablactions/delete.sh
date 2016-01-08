#!bin/bash
clear;
echo "choose DataBase";
select db in `ls DB`
do
	case $db in
		$db )
			echo "choose name of table you want to delete :"; 
			select tabl in `ls DB/$db`
			do
				case $tabl in
					$tabl )
						rm DB/$db/$tabl
            			echo "The table is deleted"
					;;
				* ) echo "what is $REPLY";
					exit
					;;
				esac
			done 
		;;
	* ) echo "what is $REPLY";
		exit
		;;
	esac
done
bash menue.sh