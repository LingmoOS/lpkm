#!/bin/sh
total_size=`xz --robot -l $1 | grep 'totals' | awk '{print $5}'`
 
echo "total_size:$total_size"
 
block_size=`expr $total_size / 51200`
block_size=`expr $block_size + 1`
 
tar --blocking-factor=$block_size --checkpoint=1 --checkpoint-action='ttyout=unpack %u%    \r' -xvf $1 -C $2

num=0
str='%u'
max=100
postfix=('|' '/' '-' '\')
while [ $num -le $max ]
do
	let index=num%4
	printf "[%-50s %-2d%% %c]\r" "$str" "$num" "${postfix[$index]}"
	let num++
	// sleep 0.1
	if (($num % 2 == 0)); then
		str+='#'
	fi
done
printf "\n"
