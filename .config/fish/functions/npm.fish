function npm
  docker run -p $PORT:$PORT -e "PORT=$PORT" -it --rm --volumes-from data --volumes-from dotfiles -w $PWD --entrypoint npm mhart/alpine-node-auto:6 $argv
end
