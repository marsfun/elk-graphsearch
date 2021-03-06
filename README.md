# Search SPO Data over Elastic stack (ELK) on Docker


Run the latest version of the [Elastic stack](https://www.elastic.co/elk-stack) with Docker and Docker Compose.

It will give you the ability to analyze any data set by using the searching/aggregation capabilities of Elasticsearch
and the visualization power of Kibana.

Overview

1. `Prepare`
    * first, we should download the DBpeida data from website by executing the download.sh <font color=red>__in indexDBpedia folder__</font>.
      ```bash
      $ sh download.sh
      ```
    * Build graph_data's docker images
      ```bash
      $ sh build.sh
      ```
2. `Run`  
    * start elk containers, start a data container which we used to index spo data over elasticsearch client api. 
      ```bash
      $ sh run.sh
      ```
    * in the data container shell (auto log in after execute run.sh script), execute command below to index data to elastic search.
      ```bash
      $ python /tmp/client/indexDBpedia.py
      ```
3. `Setting` 
    * trun on monitor in kibana
    * start a trail license
    
      curl -X POST "localhost:9200/_xpack/license/start_trial?acknowledge=true"


4. `Clean` 
    * executing clean script to destroy containers
      ```bash
      $ sh clean.sh
      ```
Preview
![image](https://github.com/marsfun/elk-graphsearch/blob/master/_img/trun_on_monitor.png)
![image](https://github.com/marsfun/elk-graphsearch/blob/master/_img/start_trial.png)
![image](https://github.com/marsfun/elk-graphsearch/blob/master/_img/set_a_index_pattern.png)
![image](https://github.com/marsfun/elk-graphsearch/blob/master/_img/set_dbpedialinks_pattern.png)
![image](https://github.com/marsfun/elk-graphsearch/blob/master/_img/search_person.png)
![image](https://github.com/marsfun/elk-graphsearch/blob/master/_img/go_into_graph.png)
![image](https://github.com/marsfun/elk-graphsearch/blob/master/_img/search_person_related.png)
![image](https://github.com/marsfun/elk-graphsearch/blob/master/_img/drilldown_a_related_entity.png)
![image](https://github.com/marsfun/elk-graphsearch/blob/master/_img/drilldown_to_wiki.png)
![image](https://github.com/marsfun/elk-graphsearch/blob/master/_img/drilldown_to_wiki_result.png)






