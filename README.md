# Репозиторий тестового задания для ЭР-Телеком
Клонируем данный репозиторий на свой сервер и выполняем с правами суперпользователя:

  docker-compose up -d

Далее ожидаем пока будет развернуто рабочее окружение, после этого можно перейти к

```
Точки входа в приложения:
%ip или hostname сервера% / - WildFly Placeholder 

%ip или hostname сервера% /business-central - консоль администрирования JBPM 
Логин пароль wbadmin:wbadmin
%ip или hostname сервера% /jbpm-casemgmt - консоль администрирования JBPM-Case Management
Логин пароль wbadmin:wbadmin
%ip или hostname сервера% /kie-server/docs/#/ - Документация по REST API Kie Server

%ip или hostname сервера% /grafana - Grafana 
Логин пароль admin:admin

%ip или hostname сервера% /prometheus - Prometheus
статус таргета можно посмотреть тут: /prometheus/targets
```
*%ip или hostname сервера% в моём случае был 192.168.0.4, так как был получен от DHCP сервера моего маршрутизатора.*


Конфигурация, использованная при создании/запуске:
```
VMWare 16.1.2 build-17966106
Ubuntu 20.04.3 LTS (GNU/Linux 5.4.0-89-generic x86_64)
Сеть виртуальной машины в режиме Bridge
2 cores/4 RAM/20GBs
```
