all: static
	npm start

static:
	mkdir -p dist
	cp -r static dist/static

watch:
	npm watch

deploy: all
	git subtree push --prefix dist origin gh-pages
