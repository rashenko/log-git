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


# Запуск сервиса
systemctl daemon-reload
systemctl enable --now kibana.service
systemctl restart kibana
