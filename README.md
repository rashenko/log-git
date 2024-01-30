 <!---Пример кода-->
[![Typing SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=Computer+science+student)](https://git.io/typing-svg)

> [!CAUTION] 
> ## ЗАПУСКАТЬ СКРИПТЫ ОТ ПОЛЬЗОВАТЕЛЯ ROOT


## Скачиваем пакеты
### [Используем репозиторий](https://www.elastic.co/guide/en/elasticsearch/reference/8.9/deb.html)

> * Elasticsearch

     https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.9.1-amd64.deb
#

> * Filebeat

    https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.9.1-amd64.deb
#

> * Kibana

    https://artifacts.elastic.co/downloads/kibana/kibana-8.9.1-amd64.deb
#

> * Logstash

    https://artifacts.elastic.co/downloads/logstash/logstash-8.9.1-amd64.deb
#

### УСТАНОВКА ELK

> #Устанавливаем Elasticsearch

    sudo dpkg -i elasticsearch-8.9.1-amd64.deb
#   
 
> #Установка JDK, для запуска, отладки и исполнения программ

    sudo apt install default-jdk -y
# 
> #Установка kibana

    sudo dpkg -i kibana-8.9.1-amd64.deb
# 
> #Установка Logstash

    sudo dpkg -i logstash-8.9.1-amd64.deb
 # 

### НАСТРОЙКА ELK
### 1. Настраиваем Elasticsearch:
   
* #### Запустить скрипт elasticsearch_config.sh, он настроит Elasticsearch;

### 2. Настраиваем Kibana:
   
* #### Запустить скрипт kibana_config.sh, он настроит Kibana;

### 3. Настраиваем Logstash:
   
* #### Запустить скрипт logstash_script.sh, он настроит Logstash;




 
