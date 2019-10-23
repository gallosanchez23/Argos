# Argos

_Description_


## Table of contents

- [Argos](#argos)
	- [Table of contents](#table-of-contents)
	- [Project details](#project-details)
		- [Development team](#development-team)
		- [Environment URLs](#environment-urls)
		- [Management tools](#management-tools)
	- [Development](#development)
		- [Setup](#setup)
		- [Running the stack for development](#running-the-stack-for-development)
		- [Stopping services](#stopping-services)


## Project Details

### Development team

| Name | Email | Github | Role |
| ---- | ----- | ------ | ---- |
| José Eduardo Sánchez | gallo.sanchez23@gmail.com | [@gallosanchez23](https://github.com/gallosanchez23) | Developer |

### Environment URLs

* **Development** - [localhost:3000](https://localhost:3000)

### Management tools

You should ask for access to this tools if you don't have ir already:

* [Github repo](https://github.com/gallosanchez23/Argos)


## Development

### Setup

Before setting up the project, you sould have installed the following development tools:

* [Git](https://git-scm.com/downloads)
* [Docker](https://runnable.com/docker/getting-started/)
* [Docker Compose](https://docs.docker.com/compose/install/)
* [Plis](https://github.com/IcaliaLabs/plis) (optional, but highly recommended)

Once you have installed the required third-party software, you can follow this steps:

1. Clone the project repository on your local machine.

	SSH:

	```bash
	$ git clone git@github.com:gallosanchez23/Argos.git
	```

	or HTTPS:
	```bash
	$ git clone https://github.com/gallosanchez23/Argos.git
	```

2. Create the Docker image.

	`plis`:

	```bash
	$ plis build
	```

	`docker-compose`:

	```bash
	$ docker-compose build
	```

### Running the stack for development

In your terminal, run:

`plis`:

```bash
$ plis start web && plis attach web
```

`docker-compose`:

```bash
$ docker-compose up
```

This command will start the application and display the logs on your terminal. Use `Ctrl + C` to exit the logs and turn the application down. Otherwise, in order to run the service in the background, just run:

`plis`:

```bash
$ plis start web
```

`docker-compose`:

```bash
$ docker-compose up -d
```

If the service is already running, you can run the command `plis attach web` to attach current service's logs.

***NOTE: You can always run `plis run web bash` or `docker-compose run web bash` commands to enter the container's console.***

### Stopping services

In order to stop `arogs-web` entirely you can run:

`plis`:

```bash
$ plis stop
```

`docker-compose`:

```bash
$ docker-compose stop
```

If you want to stop the services and remove the containers:

`plis`:

```bash
$ plis down
```

`docker-compose`:

```bash
$ docker-compose down
```

If you only want to stop one service in particular, you can specify it with the following command:

`plis`:

```bash
$ plis stop [service_name]
```

`docker-compose`:

```bash
$ docker-compose stop [service_name]
```

### Running specs

To run specs, you can do:

`plis`:

```bash
$ plis run web rspec
```

`docker-compose`:

```bash
$ docker-compose run web rspec
```

Or for a specific file:

`plis`:

```bash
$ plis run web rspec spec/models/user_spec.rb
```

`docker-compose`:

```bash
$ docker-compose run web rspec spec/models/user_spec.rb
```

You can also do:

`plis`:

```bash
$ plis run web bash
```

`docker-compose`:

```bash
$ docker-compose run web bash
```

And do all the `rspec` operations inside the container's bash console so you don't have to run the service's bash every time.
