#!/bin/bash

file_path="/etc/elasticsearch/elasticsearch.yml"
new_elk='"elk"'

# Замена строк в файле
sed -i 's/xpack.security.enabled: .*/xpack.security.enabled: false/g' $file_path
sed -i 's/xpack.security.enrollment.enabled: .*/xpack.security.enrollment.enabled: false/g' $file_path
sed -i 's/  enabled: .*/  enabled: false/g' $file_path
sed -i 's/xpack.security.transport.ssl:\n  enabled: .*/xpack.security.transport.ssl:\n  enabled: false/g' $file_path
sed -i "s/cluster.initial_master_nodes:.*/cluster.initial_master_nodes: [$new_elk]/g" $file_path

# Запуск сервиса
sudo systemctl daemon-reload
# Перезапуск сервиса
sudo systemctl restart elasticsearch.service
