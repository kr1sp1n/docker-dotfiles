build:
	docker build -t kr1sp1n/dotfiles .
create:
	docker create -v /root --name dotfiles kr1sp1n/dotfiles
clean:
	docker rm -f dotfiles
run:
	docker run --name dock --rm -it -v /var/run/docker.sock:/var/run/docker.sock --volumes-from dotfiles kr1sp1n/dock
