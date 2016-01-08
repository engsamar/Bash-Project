#!bin/bash
clear ;
read -p  "Enter Name of DataBase " dbname
for search in `ls DB `; 
do
   if [ $dbname = $search ]
     then 
        echo "The database exists ,Try New Name"
        bash dbactions/createDB.sh
    
   else
        mkdir DB/$dbname
        clear ;
        echo "The database is created"
        bash menue.sh
   fi
done
