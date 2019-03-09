if [ "$1"x = x ]
then
	echo "need message"
else
	git add .
	git commit -m $1
	if [ "$2" = "mac" ]
	then
		git push origin mac
	else
		echo "invalid branch"
  fi
fi
