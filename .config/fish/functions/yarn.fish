function yarn 
  docker run -it --rm --volumes-from data --volumes-from dotfiles -w $PWD --entrypoint yarn howgood/yarn $argv
end
