#!/bin/bash


file_path="/etc/logstash/conf.d/logstash-nginx-es.conf"
config_path="/etc/logstash/logstash.yml"

# Копируем сертификаты
cp -R /etc/elasticsearch/certs /etc/logstash/config
chown -R root:logstash /etc/logstash/config

# Замена строк в файле
sed -i 's|# path.config: .*|path.config: /etc/logstash/conf.d|g' "$config_path"

# Добовляем в автозагрузку сервис Logstash
systemctl enable --now logstash.service

# Конфиг logstash
cat <<EOT >> $file_path
input {
    beats {
        port => 5400
    }
}

filter {
    grok {
        match => [ "message" , "%{COMBINEDAPACHELOG}+%{GREEDYDATA:extra_fields}"]
        overwrite => [ "message" ]
    }
    mutate {
        convert => ["response", "integer"]
        convert => ["bytes", "integer"]
        convert => ["responsetime", "float"]
    }
    date {
        match => [ "timestamp" , "dd/MMM/YYYY:HH:mm:ss Z" ]
        remove_field => [ "timestamp" ]
    }
    useragent {
        source => "agent"
    }
}

output {
    elasticsearch {
        hosts => ["http://localhost:9200"]
        #cacert => '/etc/logstash/certs/http_ca.crt'
        #ssl => true
        index => "weblogs-%{+YYYY.MM.dd}"
        document_type => "nginx_logs"
    }
    stdout { codec => rubydebug }
}
EOT

# Перезапускаем сервис Logstash
systemctl restart logstash.service

# Включаем автозапуск сервиса Logstash
systemctl status logstash.service

