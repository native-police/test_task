#Авторазвертывание сервера по тестовому заданию
#Так как про использование unzip и git не было сказано, используем curl 

#Скачиваем docker-compose.yml
curl -O https://raw.githubusercontent.com/native-police/test_task/main/docker-compose.yml
#Скачиваем необходимые файлы для grafana
mkdir grafana
cd grafana
curl -O https://raw.githubusercontent.com/native-police/test_task/main/grafana/grafana.ini
mkdir dashboards 
mkdir datasources 
cd dashboards 
curl -O https://raw.githubusercontent.com/native-police/test_task/main/grafana/dashboards/dashboard.json
curl -O https://raw.githubusercontent.com/native-police/test_task/main/grafana/dashboards/dashboard.yml
cd ~/grafana/datasources
curl -O https://raw.githubusercontent.com/native-police/test_task/main/grafana/datasources/datasource.yml

#Скачиваем конфигурацию nginx
cd 
curl -O https://raw.githubusercontent.com/native-police/test_task/main/nginx.conf
#Скачиваем конфиг prometheus 
curl -O https://raw.githubusercontent.com/native-police/test_task/main/prometheus.yml
#Поднимаем сервер
sudo -s docker-compose up -d