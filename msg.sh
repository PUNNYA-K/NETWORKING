#message
hr=`date +%H`
user=`whoami`
if [ $# -ne 0 ]
then
echo "Syntax is <$0>"
fi

if [ $hr -gt 0 -a $hr -le 12 ]
then
echo "hello $user, good morning" 
elif [ $hr -gt 12 -a $hr -le 16 ]
then
echo "hello $user, good afternoon"
else
echo "hello $user, good evening"
fi 

