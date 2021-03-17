while true; do
	echo "<p>$(date)</p>" >> /opt/index.html
	sleep 3
done	


#complaining about spaces
#tr -d '\r' < start.sh > fixedfile.sh