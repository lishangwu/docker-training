docker run -it -v ~/docker/myd:/myd centos

docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" shangwuli/es:7.12.0

./bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.12.0/elasticsearch-analysis-ik-7.12.0.zip
