#prime number

if [ $# -ne 2 ]
then
echo "Syntax is $0 <no1> <no2>"
exit 2
fi

a=$1
b=$2
if [ $a -ge $b ]
then
temp=$a
a=$b
b=$temp
fi
clear
echo "prime number between $a and $b are:"
while [ $a -le $b ]
do
if [ $a -eq 1 ]
then
a=`expr $a + 1`
continue
fi
i=2
flag=0
while [ $i -le `expr $a / 2` ]
do
if [ `expr $a % $i` -eq 0 ]
then
flag=1
break
else
i=`expr $i + 1`
fi
done
if [ $flag -ne 1 ]
then
echo "$a"
fi
a=`expr $a + 1`
done
