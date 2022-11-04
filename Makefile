build:
	docker build -t dotfiles --force-rm --build-arg PRIVATE_KEY="$(cat ~/.ssh/id_rsa_kris)" --build-arg PUBLIC_KEY="$(cat ~/.ssh/id_rsa_kris.pub)" .

run: build
	docker run -it --rm --name dotfiles dotfiles
