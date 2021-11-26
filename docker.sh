#!/bin/bash

echo "Started: Setting up docker..."
docker run -i -d -t -p 8000:8000 --name=dynamodb amazon/dynamodb-local
docker run -d -p 9200:9200 -p 5601:5601 --name=elasticsearch nshou/elasticsearch-kibana
echo "Finished: Setting up docker"
