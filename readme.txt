--------------------------------------------------------------------------------
What is this?
--------------------------------------------------------------------------------
Ever wanted a complete, fast, easy-to-use web server that you could put anywhere and run from anything? Welcome to WNMP - the portable Windows/Nginx/MySQL/PHP server. Just download the required packages (selecting which versions you want) and your ready to roll! No installation, no fuss.

--------------------------------------------------------------------------------
Install Guide:
--------------------------------------------------------------------------------
[] Install PHP <http://windows.php.net/download/>
Download the "no-install" zip archive of the PHP version you wish to use and place it in the PHP directory. Make sure to create a "php.ini" file!

[] Install Memcached <http://jehiah.cz/projects/memcached-win32/>
Download the windows port of memcached and place it in the "memcached" folder.

[] Install Nginx <http://nginx.org/>
Download the Nginx webserver and place it in the "nginx" folder".

[] Install MySQL <http://dev.mysql.com/downloads/mysql/>
Download the "no-install" mysql server zip and place it in the "mysql" folder.

[] OPTIONAL Install phpMyAdmin <http://www.phpmyadmin.net>
phpMyAdmin makes managing MySQL databases easy. Download the phpMyAdmin files and place it in www/phpmyadmin/ (requires PHP to be installed!).

--------------------------------------------------------------------------------
Running the Server
--------------------------------------------------------------------------------
After each package has been placed in the correct folder then run the start_server.bat (by double-clicking) to start WNMP! Run stop_server.bat to close everything. It's as easy as that!

--------------------------------------------------------------------------------
Notes
--------------------------------------------------------------------------------
[Nginx]
After downloading nginx you must make sure to enable PHP in the nginx.conf file and you must also make sure to set the correct root so that nginx knows where to find your web files. Please see the example.nginx.conf file included. We recommend that you use the included "www" folder as the web root (rather than the default of nginx/html/) since you might want to update nginx at a later date.

[PHP]
Make sure to enabled your required PHP modules by editing the php.ini file. You might also need to set the "extension_dir" param to "ext" to make sure php looks in the right places for the DLL files!

[MySQL]
Make sure to create a my.ini file in the mysql folder. It is important that you setup MySQL to handle UTF-8. Please see (or just use) the example.my.ini file for recommended values.

[Memcached]
The start_server.bat file loads memcached using only 10MB of RAM by default. If you need more simply edit the file.

--------------------------------------------------------------------------------
David Pennington <http://xeoncross.com> <http://code2design.com>
