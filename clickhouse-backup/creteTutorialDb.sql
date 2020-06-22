CREATE DATABASE IF NOT EXISTS tutorial
show databases
use tutorial
CREATE TABLE test(a String, b UInt8, c FixedString(1)) ENGINE = Log

INSERT INTO test (a,b,c) values ('user_1',1,'1');
INSERT INTO test (a,b,c) values ('user_2',2,'5');
INSERT INTO test (a,b,c) values ('user_3',3,'5');
INSERT INTO test (a,b,c) values ('user_1',1,'5');
INSERT INTO test (a,b,c) values ('user_4',4,'5');
INSERT INTO test (a,b,c) values ('user_5',5,'5');

Select count(*) from test;