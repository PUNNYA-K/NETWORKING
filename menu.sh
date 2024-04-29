#menu driven

opt=0
while [ $opt -le 7 ]
do
clear
echo "\n1.All ordinary files \n2.All directory files \n3.All special files \n4.All files readable to u g o \n5.All files writable to u g o \n6.All files executable to u g o \n7.All files with read write execute to owner\n8.Exit"
echo -n "option:"
read opt

case $opt in

1)echo "\nOrdinary files are:"
for file in *
do
if [ -f $file ]
then
echo $file
fi
done
;;

2)echo "\nDirectory files are:"
for file in *
do
if [ -d $file ]
then
echo $file
fi
done
;;

3)echo "\nSpecial files are:"
for file in *
do
if [ | -d $file -a | -f $file ]
then
echo $file
fi
done
;;

4)echo "\nAll files readable to u g o:"
for file in *
do
if [ -f $file ]
then
user=`ls -l $file | cut -c 2-2`
group=`ls -l $file | cut -c 5-5`
owner=`ls -l $file | cut -c 8-8`
if [ $user="r" -a $group="r" -a $owner="r" ]
then
echo $file
fi
fi
done
;;

5)echo "\nFiles that are writable by u g o:"
for file in *
do
if [ -f $file ]
then
user=`ls -l $file | cut -c 3-3`
group=`ls -l $file | cut -c 6-6`
owner=`ls -l $file | cut -c 9-9`
if [ $user="w" -a $group="w" -a $owner="w" ]
then
echo $file
fi
fi
done
;;

6)echo "\nFiles executable by u g o are:"
for file in *
do
if [ -f $file ]
then
user=`ls -l $file | cut -c 4-4`
group=`ls -l $file | cut -c 7-7`
owner=`ls -l $file | cut -c 10-10`
if [ $user="x" -a $group="x" -a $owner="x" ]
then
echo $file
fi
fi
done
;;

7)echo "\nFiles rwx by owner are:"
for file in *
do
if [ -f $file ]
then
rxw=`ls -l $file | cut -c 2-4`
if [ $rwx="rwx" ]
then
echo $file
fi
fi
done
;;

8)echo "Exiting......"
 
t 0
;;

esac
echo -n "Enter to continue:"
read x
done

