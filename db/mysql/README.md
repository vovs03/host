# MySQL

## APT (Deb)

### Install

> [Install MySQL](https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/)

- `sudo apt-get install mysql-server` // Linuxmint
- `sudo apt-get install mysql-server` // Ubuntu 156 Mb

### Start

- `systemctl status mysql`


### MySQL inside

- `> \s` // [status]
- `> SHOW DATABASES;`
- `> DROP DATABASE test;` Удаление БД
- `> CREATE DATABASE company;`
- `> USE company;`
- `> \s`

#### Alternate commands

```bash
service mysql start
service mysql status
service mysql stop

####
/etc/init.d/mysql start
/etc/init.d/mysql status
/etc/init.d/mysql stop
```

> systemctl status mysql.service


```SQL

CREATE TABLE users (
	
	id 		INT(5) AUTO_INCREMENT PRIMARY KEY,
	name 	VARCHAR(64),
	surname VARCHAR(32),
	age 	TINYINT(3),
	email 	VARCHAR(64),
	status 	VARCHAR(128)
) 

DEFAULT CHARACTER SET UTF8;
```

```SQL
SHOW tables;
DESCRIBE users;
```

> link [Типы скриптов, подробнее](https://sql.recoverytoolbox.com/ru/faq-import-saved-scripts-into-database.html)

Существует множество типов скриптов, например(`MS SQL Server`):

- `Types*.sql` – это скрипты, которые создают типы данных, определяемые пользователем.
- `Tables*.sql` – скрипты, которые создают таблицы.
- `Indexes*.sql` – скрипты, которые создают первичные ключи и индексы.
- `ForeignKeys*.sql` – скрипты, которые создают вторичные ключи.
- `Procedure*.sql` – скрипты, которые создают хранимые процедуры.
- `Function*.sql` – скрипты, которые создают функции, определяемые пользователями.
- `View*.sql` – скрипты, которые создают просмотры.
- `Triggers*.sql` – скрипты, которые создают триггеры.
- `Data*.sql` – скрипты, которые заполняют таблицы данными.


### Uninstall

- `sudo apt-get remove --purge mysql-server` // LinuxMint 2022-03-03 14:23

### Reinstall

- `sudo apt-get install --reinstall mysql-server`

### Reset root password

```bash
➜  sql git:(main) ✗ 2022-03-03T13:39:17.637277Z mysqld_safe Logging to syslog.
2022-03-03T13:39:17.644128Z mysqld_safe Logging to '/var/log/mysql/error.log'.
/usr/bin/mysqld_safe: 152: /usr/bin/mysqld_safe: cannot create /var/log/mysql/error.log: Permission denied
2022-03-03T13:39:17.653794Z mysqld_safe Directory '/var/run/mysqld' for UNIX socket file don't exists.
/usr/bin/mysqld_safe: 152: /usr/bin/mysqld_safe: cannot create /var/log/mysql/error.log: Permission denied
```

- [DANGER: RISKY OPERATTION](https://stackoverflow.com/questions/1708409/how-to-start-mysql-with-skip-grant-tables)
