# Drupal 9 stream demo

An example Drupal 9 application to use as a demo on [Gary's stream](https://twitch.tv/spabby).

Dependencies are managed using [Composer](https://getcomposer.org), including Drupal core and all contrib projects. This project is based on [drupal/recommended-project](https://github.com/drupal/recommended-project).

For more information, see:

- [
Starting a Site Using Drupal Composer Project Templates
](https://www.drupal.org/docs/develop/using-composer/starting-a-site-using-drupal-composer-project-templates)
- [
Using Composer to Install Drupal and Manage Dependencies
](https://www.drupal.org/docs/develop/using-composer/using-composer-to-install-drupal-and-manage-dependencies)
- [
Managing dependencies for a custom project
](https://www.drupal.org/docs/develop/using-composer/managing-dependencies-for-a-custom-project)
- [
Using Drupal's Composer Scaffold
](https://www.drupal.org/docs/develop/using-composer/using-drupals-composer-scaffold)

## Usage

### Starting the project

The project is using Docker and Docker Compose for local development.

Run the `make` command to create the required files, download Drupal core, the additional contrib modules and PHP libraries, and install Drupal.

If you are using [Traefik](https://docs.traefik.io) (recommended), then the site should now be available at <http://stream-demo.docker.localhost>.

### Running Composer commands

Compser commands can be run via the `docker-compose run` command:

```
docker-compose run --rm composer <command>
```

For example, to add the Admin Toolbar module:

```
docker-compose run --rm composer require drupal/admin_toolbar
```

### Running Drush commands

Drush commands can be run via the `docker-compose run` command:

```
docker-compose run --rm php vendor/bin/drush <command>
```

For example, to rebuild the cache:

```
docker-compose run --rm php vendor/bin/drush cache:rebuild
```

Alternatively, you could connect to the `php` container using `docker-compose exec php` and run `vendor/bin/drush <command>` within the container.
