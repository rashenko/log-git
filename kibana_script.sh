#!/bin/bash

file_path="/etc/kibana/kibana.yml"

# Копируем сертификаты
cp -R /etc/elasticsearch/certs /etc/kibana
chown -R root:kibana /etc/kibana/certs


# Замена строк в файле
sed -i 's/#server.port: .*/server.port: 5601/g' $file_path
sed -i 's/server.port: .*/server.port: 5601/g' $file_path
sed -i 's/#server.host: .*/server.host: "0.0.0.0"/g' $file_path
sed -i 's/server.host: .*/server.host: "0.0.0.0"/g' $file_path


# Запуск сервиса Kibana
systemctl daemon-reload

#Добовляем в автозагрузку сервис Kibana
systemctl enable --now kibana.service

#Проверяем статус сервиса Kibana
systemctl status kibana.service
