# docker-python-flask

## Stack

* Python 3.x (latest, 3.10.0 as of this writing)
* Flask 2.0.2
* PostgreSQL

## Quick Start

1. Install docker
2. Fork this repo and clone it locally
3. (optional) Update the PostgreSQL default credentials and database name in `docker-compose.yml`
4. `docker compose up`

## Rebuilding the `app` container

You'll need to rebuild the app container if you modify anything in `Dockerfile.app` or `requirements.txt`,
such as adding new Python dependencies. To do this:

1. Stop the running app container: `docker compose stop app`
2. Rebuild: `docker compose build`
3. Start the app container: `docker compose up app`

## Development

The current working directory is mounted in the `app` container. Changes to any files
will cause the Flask server to restart automatically with your changes. To view the logs,
`docker compose logs -f app`.

To stop all the running containers, `docker compose stop`.

To start all the containers, `docker compose up -d`.
