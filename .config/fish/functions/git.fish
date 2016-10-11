function git
  docker run -it --rm -v $SSH_HOME:/root/.ssh --volumes-from data --volumes-from dotfiles -w $PWD kr1sp1n/git $argv
end
