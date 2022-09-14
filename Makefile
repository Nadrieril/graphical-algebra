serve:
	bundle exec jekyll serve --livereload

install:
	bundler install

clean:
	bundle exec jekyll clean
	rm -r .jekyll-cache .tweet-cache
