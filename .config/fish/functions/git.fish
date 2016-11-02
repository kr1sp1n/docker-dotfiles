function dgit
  docker run -it --rm --volumes-from dock --volumes-from data --volumes-from dotfiles -w $PWD kr1sp1n/git $argv
end
