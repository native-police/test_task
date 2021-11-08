# Репозиторий тестового задания для ЭР-Телеком
Клонируем данный репозиторий на свой сервер и выполняем с правами суперпользователя:

  docker-compose up -d

Далее ожидаем пока будет развернуто рабочее окружение, после этого можно перейти к

```
Точки входа в приложения:
%ip или hostname сервера% / - WildFly Placeholder 

%ip или hostname сервера% /business-central - консоль администрирования JBPM (см. известные проблемы)

%ip или hostname сервера% /jbpm-casemgmt - консоль администрирования JBPM-Case Management (см. известные проблемы)

%ip или hostname сервера% /kie-server/docs/#/ - Документация по REST API Kie Server

%ip или hostname сервера% /grafana - Grafana 
Логин пароль admin:admin
Посмотреть на dashboard, подгружаемый при деплое, можно тут: /grafana/d/-2b06CKnz/

%ip или hostname сервера% /prometheus - Prometheus
статус таргета можно посмотреть тут: /prometheus/targets
```
*%ip или hostname сервера% в моём случае был 192.168.0.4, так как был получен от DHCP сервера моего маршрутизатора.*

Известные проблемы:
1. После логина в консоль администрирования JBPM выводится пустое окно, хотя на самом деле происходит загрузка приложения, что будет видно, если открыть devtools в браузере. Возможно, нужно изменить параметры запуска, так как приложение не может корректно запуститься. Более хорошо видно, если залогиниться в JBPM Case Management.
Данный баг воспроизводится в Edge, Chrome, Firefox. Зато в Internet Explorer всё работает корректно, за исключением того, что IE не умеет обрабатывать современные таблицы стилей.
2. Порт 8080 остаётся открытым. 


Конфигурация, использованная при создании/запуске:
```
VMWare 16.1.2 build-17966106
Ubuntu 20.04.3 LTS (GNU/Linux 5.4.0-89-generic x86_64)
Сеть виртуальной машины в режиме Bridge
2 cores/4 RAM/20GBs
```
