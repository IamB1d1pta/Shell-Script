echo "enter 2 numbers::"
read a b

while [ $a -ne $b ]
do

if [ $a -gt $b ] 
then
a=`expr $a - $b`
else
b=`expr $b - $a`
fi

done

echo "GCD = $a"
