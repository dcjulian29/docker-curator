@docker run -it --rm -v %~dp0/actions.yml:/etc/curator/actions.yml ^
    -v %~dp0/config.yml:/etc/curator/config.yml dcjulian29/elasticsearch-curator
