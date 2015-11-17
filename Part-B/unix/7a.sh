echo "the number of arguments provided are:$#"
length=$#
echo "reverse order of the aruments:"
while [ $length -ne 0 ]
do
eval echo \$$length
length=`expr $length - 1`
done

