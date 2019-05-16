awk -F " " '{print $1 " " $7 " " $9 " " $10}' $1 | sort -k1 >> t.temp
pre=""
count=0
while read line;do
	domain=`echo $line | awk -F " " '{print $1}'`
	path=`echo $line | awk -F " " '{print $2}'`
	scode=`echo $line | awk -F " " '{print $3}'`
	bcount=`echo $line | awk -F " " '{print $4}'`
	if [[ $scode == "\"-\"" ]];then
		scode=" "
	fi
	if [[ "200" -eq "$scode" && count -lt 10 ]];then
		echo "Domain: " "$domain" "Path: " "$path" "Bytes served: " $bcount $count
	fi
	if [[ $pre == $domain ]];then
		((count++))
	else
		pre=""
		count=0
	fi
	pre=$domain
done < t.temp
rm -f t.temp
