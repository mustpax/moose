all:
	npm start

watch:
	npm run watch

deploy: all
	git subtree push --prefix dist origin gh-pages
