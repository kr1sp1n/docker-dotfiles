build:
	docker build -t kr1sp1n/dotfiles .
create:
	docker create -v /root --name dotfiles kr1sp1n/dotfiles
clean:
	docker rm -f dotfiles
run:
	docker run --rm -it --volumes-from dotfiles kr1sp1n/alpine-neovim
