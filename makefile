build:
	docker build . -t johnnychen94/texlive:base

deploy:
	docker push johnnychen94/texlive:base
