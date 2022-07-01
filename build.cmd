docker build -t dcjulian29/elasticsearch-curator:5.8.3 .
docker tag dcjulian29/elasticsearch-curator:5.8.3 dcjulian29/elasticsearch-curator:latest
docker push dcjulian29/elasticsearch-curator --all-tags
