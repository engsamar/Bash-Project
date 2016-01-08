#!bin/bash
clear ;
echo "choose Data Base to insert data ";
select searchDB in `ls DB`
do
	case $searchDB in
		$searchDB )
			select selecttbl in `ls data/$searchDB`
			do
				case $selecttbl in
					$selecttbl )
					echo -e "\n" >>data/$searchDB/$selecttbl
					for (( i = 0; i < $col; i++ )); do
						read -p "Enter  $arr[i] : " row[i]
						echo -n  -e ${row[i]} " | " >>DB/$searchDB/$selecttbl
					done
						
					;;
		
			esac					
			done
		;;
		
esac
done
