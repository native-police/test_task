# Репозиторий тестового задания для ЭР-Телеком
Клонируем данный репозиторий на свой сервер и выполняем с правами суперпользователя:

  docker-compose up -d

Далее ожидаем пока будет развернуто рабочее окружение, после этого можно перейти к

```
Точки входа в приложения:
%ip или hostname сервера% / - JBPM (см. известные проблемы)

%ip или hostname сервера% /business-central - консоль администрирования JBPM

%ip или hostname сервера% /grafana - Grafana 
Логин пароль admin:admin
Посмотреть на dashboard, подгружаемый при деплое, можно тут: /grafana/d/-2b06CKnz/

%ip или hostname сервера% /prometheus/ - Prometheus (см. проблема №4)
статус таргета можно посмотреть тут: /prometheus/targets
```
*%ip или hostname сервера% в моём случае был 192.168.0.4, так как был получен от DHCP сервера моего маршрутизатора.*

Известные проблемы:
1. После логина в консоль администрирования JBPM выводится пустое окно, хотя ошибок в логах, влияющих на загрузку приложения не наблюдается.

2. Не удается проверить, действительно ли JBPM установил связь с Postgres, так как не удается получить доступ к БД через pgAdmin, но в логах JBPM выводится следующее:
 ```
 Using Database settings: 
 Driver: postgres 
 Host: postgres 
 Port: 5432 
 Name: jbpm 
 User: jbpm 
 Updating driver config for database: postgres 
 "PostgreSQL module exists" 
 {"outcome" => "success"} 
 {"outcome" => "success"} 
 {"outcome" => "success"} 
 {"outcome" => "success"} 
 {"outcome" => "success"} 
 {"outcome" => "success"} 
 {"outcome" => "success"} 
 Running jBPM Server Full on JBoss Wildfly... 
```
3. Порт 8080 остаётся открытым. 
4. Для доступа в Prometheus нужно в адресной строке обязательно ввести / в конце. Иначе выдаёт ошибку 404.

Конфигурация, использованная при создании/запуске:
```
VMWare 16.1.2 build-17966106
Ubuntu 20.04.3 LTS (GNU/Linux 5.4.0-89-generic x86_64)
Сеть виртуальной машины в режиме Bridge
2 cores/4 RAM/20GBs
```
