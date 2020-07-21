default: init

app-install: copy-required-files
	docker-compose run --rm php vendor/bin/drush site:install -y \
		--existing-config \
		--site-name="Stream Demo" \
		--account-pass=admin123

copy-required-files: vendor
	cp .env.example .env
	cp .docker.env.example .docker.env

init: copy-required-files start app-install

start: copy-required-files
	docker-compose up -d

stop:
	docker-compose down --remove-orphans

vendor: composer.json composer.lock
	docker-compose run --rm composer validate
	docker-compose run --rm composer install
