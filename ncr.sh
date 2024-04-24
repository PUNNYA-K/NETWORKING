#ncr


if [ $# -ne 0 ]
then
echo " syntax is <$0>"
exit 1
fi
fact()
{
x=$1
i=1
f=1
while [ $i -le $x ]
do
f=`expr $f \* $i`
i=`expr $i + 1`
done
return $f
}

echo  -n "enter value of n:"
read n
echo -n "enter value of r:"
read r
fact $n
factn=$?
fact $r
factr=$? 
nmr=`expr $n - $r`
fact $nmr
factnmr=$?
rnmr=`expr $factr \* $factnmr`
ncr=`expr $factn / $rnmr`
echo " $n C $r = $ncr "
