USE mysql;

DROP FUNCTION IF EXISTS lib_mysql_qtoken_info;
CREATE FUNCTION lib_mysql_qtoken_info RETURNS STRING SONAME 'lib_mysql_qtoken.so';
