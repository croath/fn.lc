.PHONY: build
build: github
	hugo -D
	./util/publish.sh

.PHONY: github
github:
	go run util/fetch_github.go > data/github.json
