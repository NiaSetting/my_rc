if [ "$1"x = x ]
then
  echo "need message"
else
  git add .
  git commit -m $1
  if [ "$2"x = "ubuntux" ]
  then
    git push origin ubuntu
  else
    echo "won't push"
  fi
fi
