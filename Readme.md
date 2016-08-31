# Docker-Scrapy

This is the docker image built on Ubuntu 14.04.

The image installed scrapy, together with pymssql for connecting to Azure SQL Server.

The image was auto-built and could be found at [Docker Hub](https://hub.docker.com/r/irmowan/docker-scrapy)

The dockerfile is held on [GitHub](https://github.com/irmowan/docker-scrapy)

### Usage

```bash
# Run the crawler
docker run -e SOURCE=source <image>
# Run the crawler, autoexit when done
docker run --rm -e SOURCE=source <image>
# Run the crawler background
docker run -d -e SOURCE=source <image>
```

Author:

[irmowan](https://github.com/irmowan)
