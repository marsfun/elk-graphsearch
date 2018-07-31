#!/usr/bin/env bash

docker-compose up -d -V

docker run -it --rm --network elk-graphsearch_elk index.alauda.cn/alaudaorg/graph_data bash

