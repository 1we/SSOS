for i in $* 
do
echo "echo $i"
echo "echo `cat  $1` >$i"
done

