build:
	docker build -t kr1sp1n/dotfiles .
create:
	docker create -v /root --name dotfiles kr1sp1n/dotfiles
clean:
	- docker rm -f data
	- docker rm -f dotfiles
	- docker rm -f dock
data:
	docker create -v ${HOME}/Code:/data --name data tianon/true
run:
	docker run --name dock --rm -it -v ${HOME}/.ssh:/root/.ssh -v /var/run/docker.sock:/var/run/docker.sock --volumes-from data --volumes-from dotfiles kr1sp1n/dock
