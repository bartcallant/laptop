#!/bin/bash

echo "Started: Setting up docker..."
docker run -i -d -t -p 8000:8000 --name=dynamodb --restart=unless-stopped amazon/dynamodb-local
docker run -d -p 9200:9200 -p 5601:5601 --name=elasticsearch elasticsearch:6.8.6
echo "Finished: Setting up docker"
