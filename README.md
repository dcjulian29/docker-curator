# A Docker Container for NMap

[![Docker Pulls](https://img.shields.io/docker/pulls/dcjulian29/elasticsearch-curator.svg)](https://hub.docker.com/r/dcjulian29/elasticsearch-curator/) [![Docker Stars](https://img.shields.io/docker/stars/dcjulian29/elasticsearch-curator.svg?maxAge=2592000)](https://hub.docker.com/r/dcjulian29/elasticsearch-curator/) [![GitHub Issues](https://img.shields.io/github/issues-raw/dcjulian29/docker-curator.svg)](https://github.com/dcjulian29/docker-curator/issues) [![CI](https://github.com/dcjulian29/docker-curator/actions/workflows/ci.yml/badge.svg)](https://github.com/dcjulian29/docker-curator/actions/workflows/ci.yml) [![Release Image](https://github.com/dcjulian29/docker-curator/actions/workflows/release.yml/badge.svg)](https://github.com/dcjulian29/docker-curator/actions/workflows/release.yml)

Elasticsearch has adopted an extensive ILM solution which is far superior to what Curator can do, but most times, it is so much easier to do it with Curator.
This is a container that provided with the config and action files, will execute and then exit the container. I typically set these up to fire via CRON so don't forget to include the `-rm` argument.
