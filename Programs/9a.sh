if [ $# != 2 ]
then 
	echo "invalid output"
	else
	p1=`ls -l $1|cut -d " " -f1`
	p2=`ls -l $2|cut -d " " -f1`
	if [ $p1 == $p2 ]
	then 
	echo "the file permissions are the same, and they are:"
	echo "$p1"
	else
	echo "the file permissions are different, and they are:"
	echo "$1 : $p1"
	echo "$2 : $p2"
fi
fi



