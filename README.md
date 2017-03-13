# dotfiles

My dotfiles as Data-only docker image.


## Install a vim plugin manager locally

```bash
curl -fLo ./.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Install fish plugin manager locally

```bash
curl -Lo ./.config/fish/functions/fisher.fish --create-dirs git.io/fisher
```

## Install plugins within a vim docker container

1. ```docker run --rm -it -v $PWD:/root kr1sp1n/alpine-neovim```
2. ```:PlugInstall```


## Install fisherman plugins within a fisherman container

1. ```docker run --rm -it -v $PWD:/root kr1sp1n/dock```
2. ```fisher```

## Build docker data-only image

```bash
docker build -t kr1sp1n/dotfiles .
```

## Create data-only container of dotfiles

```bash
docker create -v /root --name dotfiles kr1sp1n/dotfiles
```

## Run vim with data-only container as dotfiles for vim etc.

```bash
docker run --rm -it --volumes-from dotfiles kr1sp1n/alpine-neovim
```
