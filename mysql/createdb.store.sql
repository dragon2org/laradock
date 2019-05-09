CREATE DATABASE IF NOT EXISTS `store`;
CREATE DATABASE IF NOT EXISTS `test_common`;
CREATE DATABASE IF NOT EXISTS `test_data_1`;
CREATE DATABASE IF NOT EXISTS `test_data_2`;

GRANT ALL ON `store`.* TO 'testusr'@'%';
GRANT ALL ON `test_common`.* TO 'testusr'@'%';
GRANT ALL ON `test_data_1`.* TO 'testusr'@'%';
GRANT ALL ON `test_data_2`.* TO 'testusr'@'%';

GRANT ALL ON `store`.* TO 'root'@'%';
GRANT ALL ON `test_common`.* TO 'root'@'%';
GRANT ALL ON `test_data_1`.* TO 'root'@'%';
GRANT ALL ON `test_data_2`.* TO 'root'@'%';

FLUSH PRIVILEGES ;
