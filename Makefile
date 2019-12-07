all: bootstrap build

bootstrap:
	gem install --user-install bundler
	bundle install --path vendor/bundle

build:
	bundle exec jekyll build

deploy:
	./scripts/deploy

test:
	bundle exec jekyll serve

