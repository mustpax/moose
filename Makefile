all:
	npm start

watch:
	jekyll serve

new:
	./new_post.sh

deploy: all
	git subtree push --prefix dist origin gh-pages
