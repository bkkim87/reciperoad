mysql -u root -p1234

drop database 2b06_db;

create database 2b06_db;

use 2b06_db;
grant select,insert,update,delete,create,alter,drop,alter
on basicjsp.* to 'jspid'@'localhost'
identified by 'jsppass';

grant select,insert,update,delete,create,alter,drop,alter
on basicjsp.*to'jspid'@'%'
identified by 'jsppass';

exit;


