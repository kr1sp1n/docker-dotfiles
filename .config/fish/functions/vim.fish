function vim
  docker run -it --rm --volumes-from data --volumes-from dotfiles -w $PWD kr1sp1n/alpine-neovim $argv
end
