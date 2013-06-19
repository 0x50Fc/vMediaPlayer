


if [ -z "$1" ]
then

echo "./include-gen.sh source"
exit

fi



include_each(){

for file in $1/*
do

if [ -d $file ] ; then

#echo $2/`basename $file/`
mkdir $2/`basename $file/`

#echo $file $2/`basename $file/`
include_each $file $2/`basename $file/`

elif [ "${file##*.}" = "h" ] ; then

#echo $file $2/`basename $file`
cp $file $2/`basename $file`

fi

done

}

#echo ./`basename $1/`
mkdir ./`basename $1/`

include_each "$1" ./`basename $1/`
