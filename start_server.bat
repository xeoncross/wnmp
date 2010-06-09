@ECHO OFF

REM Windows The following is not valid  
REM set PHP_FCGI_CHILDREN=5

REM  Each process handles the maximum number of requests, or is set to Windows Environment variables  
set PHP_FCGI_MAX_REQUESTS=1000

:: Start PHP-fastcgi on port 9000
RunHiddenConsole php\php-cgi.exe -b 127.0.0.1:9000 -c php\php.ini

:: Start MySQL using the mysql\my.ini config file
start mysql\bin\mysqld

:: Start Memcached (m = memory to use in MB, c = max connections allowed)
RunHiddenConsole memcached\memcached.exe -m 10 -c 1024

:: Start the nginx server
cd nginx
start nginx

EXIT