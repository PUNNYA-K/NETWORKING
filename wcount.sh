#:o count number of words  and lines in a file

if [ $# -gt 1 ]
then 
echo "Syntax is <$0> [<filename>]"
exit 1
fi

flag=0
if [ $# -eq 1 ]
then
term=`tty`
exec < $1
flag=1
fi 
while read line
do
no1=`expr $no1 + 1` 
set $line>/dev/null
nowds=`expr $nowds + $#`
done
echo " no of lines=$no1 "
echo " no of words=$nowds "
if [ $flag -eq 1 ]
then
exec < $term
fi
exit 0 
