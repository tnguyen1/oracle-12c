connect / as sysdba
create spfile from pfile;
startup nomount
CREATE DATABASE ORCL
EXTENT MANAGEMENT LOCAL
DEFAULT TEMPORARY TABLESPACE temp
UNDO TABLESPACE undotbs1
CHARACTER SET AL32UTF8
NATIONAL CHARACTER SET UTF8;
CREATE TABLESPACE users LOGGING 
     DATAFILE '/u01/app/oracle/oradata/ORCL/datafile/users01.dbf' 
     SIZE 1G REUSE AUTOEXTEND ON NEXT  10M MAXSIZE UNLIMITED 
     EXTENT MANAGEMENT LOCAL;
ALTER DATABASE DEFAULT TABLESPACE users;
CREATE TABLESPACE indx_tbs LOGGING 
     DATAFILE '/u01/app/oracle/oradata/ORCL/datafile/indx01.dbf' 
     SIZE 100M REUSE AUTOEXTEND ON NEXT  1280K MAXSIZE UNLIMITED 
     EXTENT MANAGEMENT LOCAL;
exit
