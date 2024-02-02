 <!---Пример кода-->
[![Typing SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=Computer+science+student)](https://git.io/typing-svg)

> [!CAUTION] 
> ## ЗАПУСКАТЬ СКРИПТЫ ОТ ПОЛЬЗОВАТЕЛЯ ROOT


## Скачиваем пакеты
### [Используем репозиторий](https://www.elastic.co/guide/en/elasticsearch/reference/8.9/deb.html)

> * Elasticsearch

     https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.9.1-amd64.deb
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
> #Добавляем в автозагрузку Elasticsearch

    sudo systemctl enable --now elasticsearch.service
#

> #Сброс установленного пароля

    /usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic
#

> #Сгенерируйте токен регистрации для экземпляров Kibana

    /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana
#

> #Сгенерируйте токен регистрации для узлов Elasticsearch 

    /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s node
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
  ### NODE EXPORTER

   > #Скачиваем Node Exporter
    
    wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz
#
   > #Распаковка архивов
   
    tar xzvf node_exporter-*.t*gz
 #

   > #Добавляем пользователей
   
    useradd --no-create-home --shell /bin/false node_exporter
#

   > #Копируем файлы в /usr/local

    cp node_exporter-*.linux-amd64/node_exporter /usr/local/bin
#    
    chown node_exporter: /usr/local/bin/node_exporter
#

### Настройка ELK (в браузере)

* Добавляем индексные шаблоны Stack management - Index management
* http://192.168.1.14:5601
* Analytics - Discover - Create data view - weblogs* (слева вверху)
* Analytics - Dashboard - Create
* Donut - slice by response, size by #records








### НАСТРОЙКА ELK
### 1. Настраиваем статические ip адреса:
   
* #### Запустить скрипт [networkd_static_ip.sh](https://github.com/rashenko/log-git/blob/main/networkd_static_ip.sh), он настроит статический ip

### 2. Настраиваем Elasticsearch:
   
* #### Запустить скрипт [elasticsearch_script.sh](https://github.com/rashenko/log-git/blob/main/elasticsearch_script.sh), он настроит Elasticsearch;

### 3. Настраиваем Kibana:
   
* #### Запустить скрипт [kibana_config.sh](https://github.com/rashenko/log-git/blob/main/kibana_script.sh), он настроит Kibana;

### 4. Настраиваем Logstash:
   
* #### Запустить скрипт [logstash_script.sh](https://github.com/rashenko/log-git/blob/main/logstash_script.sh), он настроит Logstash;

### 5. Установка node_exporter:
   
* #### Запустить скрипт [node_exporter.sh](https://github.com/rashenko/log-git/blob/main/node_exporter.sh), он установит и   настроит node_exporter




 
