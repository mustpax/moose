all: dist/static
	npm start

dist/static: static
	mkdir -p dist
	cp -r static dist

watch:
	npm run watch

deploy: all
	git subtree push --prefix dist origin gh-pages

clean:
	rm -rf dist/
