connect sys as sysdba;
alter session set "_ORACLE_SCRIPT"=true;
create user natanascimento identified by natanascimento;
GRANT ALL PRIVILEGES TO natanascimento;