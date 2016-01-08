#!bin/bash
clear ;
read -p "Enter DataBase to change name : " dbname
for search in `ls DB ` ;
do
    if [ $dbname=$search ]
      then
	read -p "Enter new name :: " newname
        mv DB/$dbname DB/$newname
	clear ;
        echo "The database is renamed"
	bash menue.sh
    else
        echo "This database doesn't exist Try again"
	bash dbactions/renameDB.sh
    fi
done
