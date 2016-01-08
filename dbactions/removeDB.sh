#!bin/bash
clear ;
echo "Choose database that you want to remove "
read dbname
for search in `ls DB ` ;
do
    if [ $dbname=$search ]
      then
        rm -R DB/$dbname
	clear ;
        echo "The database is deleted"
	bash menue.sh
    else
        echo "This database doesn't exist Try again"
	bash dbactions/removeDB.sh
    fi
done
