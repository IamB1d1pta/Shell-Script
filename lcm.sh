echo "enter two numbers::"
read a b

if [ $a > $b ]
then
max=$a
else
max=$b
fi

while [ 1 ]
do

if [ `expr $max % $a` -eq 0 -a `expr $max % $b` -eq 0 ]
then
echo "lcm = $max"
  break
else
max=`expr $max + 1`
fi

done
