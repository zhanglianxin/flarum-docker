DROP database IF EXISTS `flarum`;
create database `flarum` default character set utf8mb4 collate utf8mb4_bin; 

GRANT ALL PRIVILEGES ON flarum.* to 'flarum'@'%';
