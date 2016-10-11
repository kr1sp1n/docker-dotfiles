function vim
  docker run -it --rm --volumes-from data -w $PWD --volumes-from dotfiles --entrypoint nvim kr1sp1n/alpine-neovim $argv
end
