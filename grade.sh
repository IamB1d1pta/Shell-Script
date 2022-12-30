f1=$1

if [ -f $f1 ]
then 
	exec < $f1
	echo "Name   Roll   Marks   Grade" > outputFile.txt
	while read linee
	do
		set -e `echo $linee`
		marks=$3
		
		
		case $marks in

			100|9[0-9]) grade='A'
			;;

			8[0-9]) grade='B'
			;;

			7[0-9]) grade='C'
			;;

			6[0-9]) grade='D'
			;;

			5[0-9]) grade='E'
			;;

			4[0-9]) grade='F'
			;;

			[0-9]|1[0-9]|2[0-9]|3[0-9]) grade="Fail"
			;;

			*) grade="Invalid"
			;;

		esac 
    	echo "$1  $2	$3   $grade" >> outputFile.txt
	done
fi

cat outputFile.txt

		
 
