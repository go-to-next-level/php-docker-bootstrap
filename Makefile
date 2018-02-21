
help: ## Prints this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: ## Builds the docker container
	docker build -t my-php .

composer-install: ## run composer install
	docker run -v $(shell pwd)/:/opt/project my-php composer install

test: ## run phpunit from command line
	 docker run -v $(shell pwd):/opt/project my-php ./vendor/bin/phpunit