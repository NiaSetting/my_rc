if [ "$1"x = x ]
then
	echo "need message"
else
	git add .
	git commit -m $1
	if [ "$2"x = "termuxx" ]
	then
		git push origin termux
	else
		echo "won't push, invalid branch"
	fi
fi
