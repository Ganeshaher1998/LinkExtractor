# LinkExtractor
# Link Extractor

Link Extractor app scrapes links from a given web page.
This repository illustrates step by step approach to learn [Docker](https://www.docker.com/).

It starts from running a very basic script and gradually leads to a multi-service container orchestration (AKA micro-service architecture).

## How to Use the Repository

If running on a local Docker installation, follow instructions in the `README`
To run illustrated codes `Docker` and `Compose` need to be installed on the machine.

## References

* [Install Docker](https://docs.docker.com/engine/installation/)
* [Install Docker Compose](https://docs.docker.com/compose/install/)



# Link Extractor: Step 5

A web application to extract links and anchor texts from a given web page and analyze link statistics.

## Changes from the previous step

* Another `Dockerfile` is added for the PHP web application to avoid live file mounting
* A Redis container is added for caching using the official Redis Docker image
* The API service talks to the Redis service to avoid downloading and parsing pages that were already scraped before

## Try it out

```
$ docker-compose up --build
```

Open http://localhost/?url=http%3A%2F%2Fodu.edu%2F in a web browser.

Press `Ctrl + C` to terminate the service.
