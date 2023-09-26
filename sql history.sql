sql history
/* 2023-09-26 11:55:41 [18 ms] */ 
select 'help' as test;
/* 2023-09-26 11:56:07 [150 ms] */ 
create TABLE help as (
select 'help' as test)
;
/* 2023-09-26 11:57:41 [575 ms] */ 
grant all PRIVILEGES on database secret_santa to santa;
/* 2023-09-26 12:01:05 [102 ms] */ 
create table test as (select 'test' as test);
/* 2023-09-26 12:03:33 [159 ms] */ 
CREATE TABLE usrData (
  usrDataUID SERIAL PRIMARY KEY,
  usrUID INT NOT null,
  usrLogin text NOT NULL,
  usrDisplayName text NOT NULL,
  usrFirstName text NOT NULL,
  usrLastName text NOT NULL,
  usrModifiedTimestamp timestamp NOT NULL DEFAULT NOW(),
  usrModifiedBy int NOT NULL,
  usrFirstLoginTimestamp Timestamp,
  usrStatus BOOLEAN not null
);
/* 2023-09-26 12:05:53 [132 ms] */ 
create table usr (

    usrUID Serial PRIMARY KEY,
    userNumber INT,
    usrPassWord text,
    usrCreateStamp TIMESTAMP not null DEFAULT now(),
   usrCreateBy text default 'System'



);
/* 2023-09-26 12:06:45 [120 ms] */ 
create table usr (

    usrUID Serial PRIMARY KEY,
    userNumber INT not null,
    usrPassWord text not null,
    usrCreateStamp TIMESTAMP not null DEFAULT now(),
   usrCreateBy text default 'System' not null



);
/* 2023-09-26 12:08:12 [126 ms] */ 
create table usr (    usrUID Serial PRIMARY KEY,
    usrNumber INT not null,
    usrLogin text not null, 
    usrPassWord text not null,
    usrCreateStamp TIMESTAMP not null DEFAULT now(),
    usrCreateBy text default 'System' not null
);
/* 2023-09-26 12:08:51 [38 ms] */ 
insert into usr(usrNumber, usrLogin, usrPassWord)
values (1, 'Admin', 'SuperSecret');
/* 2023-09-26 12:09:28 [6 ms] */ 
select * from usr LIMIT 100 OFFSET 0;
/* 2023-09-26 12:11:30 [57 ms] */ 
insert into usrdata (usrUID ,
  usrLogin,
  usrDisplayName,
  usrFirstName,
  usrLastName ,
  usrModifiedBy ,
   usrStatus)
values (0, 'admin', '***Admin***', 'FirstName', 'LastName', '0', true);
/* 2023-09-26 12:11:47 [12 ms] */ 
select * from usrdata LIMIT 100 OFFSET 0;
/* 2023-09-26 12:12:34 [9 ms] */ 
select * from usrdata ud inner join usr u on ud.usruid = u.usruid LIMIT 100 OFFSET 0;
/* 2023-09-26 12:12:54 [7 ms] */ 
select * from usrdata ud LIMIT 100 OFFSET 0;
/* 2023-09-26 12:13:09 [8 ms] */ 
select * from usrdata ud inner join usr u on ud.usruid = u.usruid LIMIT 100 OFFSET 0;
/* 2023-09-26 12:13:36 [6 ms] */ 
select * from usr LIMIT 100 OFFSET 0;
/* 2023-09-26 12:13:43 [5 ms] */ 
select * from usrdata ud inner join usr u on ud.usruid = u.usruid LIMIT 100 OFFSET 0;
/* 2023-09-26 12:13:46 [6 ms] */ 
select * from usrdata ud  LIMIT 100 OFFSET 0;
/* 2023-09-26 12:14:08 [57 ms] */ 
UPDATE usrdata SET usruid=1 WHERE "usrdatauid"=1;
/* 2023-09-26 12:14:08 [9 ms] */ 
select * from usrdata ud  LIMIT 100 OFFSET 0;
/* 2023-09-26 12:14:11 [7 ms] */ 
select * from usrdata ud inner join usr u on ud.usruid = u.usruid LIMIT 100 OFFSET 0;
/* 2023-09-26 12:46:19 [7 ms] */ 
select * from usr LIMIT 100 OFFSET 0;
/* 2023-09-26 12:57:48 [91 ms] */ 
create or replace PROCEDURE usrCreate (usrName text , usrPassword text)
LANGUAGE SQL
BEGIN ATOMIC
Select * from usr;
END;
/* 2023-09-26 12:58:04 [5 ms] */ 
call usrcreate('Murray', 'Pass');
/* 2023-09-26 13:06:57 [73 ms] */ 
create table Test123 (usrName text , usrPassword text);
/* 2023-09-26 13:07:57 [106 ms] */ 
create or replace PROCEDURE usrCreate (usrName text , usrPassword text)
LANGUAGE SQL
BEGIN ATOMIC
  insert into test123(usrName, usrPassword)
  values('1','2');
END;
/* 2023-09-26 13:08:09 [26 ms] */ 
call usrcreate('abc', 'def');
/* 2023-09-26 13:09:11 [27 ms] */ 
create or replace PROCEDURE usrCreate (usrName text , usrPassword text)
LANGUAGE SQL
BEGIN ATOMIC
  insert into test123(usrName, usrPassword)
  values(usrName,usrPassword);
END;
/* 2023-09-26 13:09:59 [27 ms] */ 
call usrcreate('abc', 'def');
/* 2023-09-26 13:10:01 [5 ms] */ 
COMMIT;
