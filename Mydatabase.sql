drop database if exists college_database;
create database college_database;
use college_database;
 

create table college_data( 
    prn int not null default 0,
    st_fname char(200) default 0, 
    st_lname char(200) default 0, 
    dob char(10) default 0,
    email_id char(50) default 0,
    dept_id int(10) default 0,
    dept_name char(200) default 0,
    f_id char(50) default 0,
    f_name char(200) default 0,
    f_age int(50) default 0,
    c_id char(50)  default 0,
    c_name char(200) default 0,
    c_fee int(50) default 0
    -- primary key(prn)    
)engine=innoDB;


create table department(
    dept_id int(10) not null default 0,
    dept_name char(200) default 0,
    primary key(dept_id)
)engine=innoDB;

create table student(
    prn int not null default 0,
    st_fname char(200) default 0, 
    st_lname char(200) default 0, 
    dob char(10) default 0,
    email_id char(50) default 0,
    dept_id int(10) default 0,
    primary key(prn)
)engine=innoDB;

create table course(
    c_id char(50) not null default 0,
    c_name char(200) default 0,
    prn int default 0,
    c_fee int(50) default 0, 
    primary key(c_id)
)engine=innoDB;

create table faculty(
    f_id char(50) not null default 0,
    f_name char(200) default 0,
    f_age int(50) default 0,
    dept_id int(10) default 0,
    c_id char(10) default 0,
    primary key(f_id)
)engine=innoDB;

create table study(
    prn int not null default 0,
    c_id char(50) not null default 0,
    primary key(prn, c_id)
)engine= innoDB;


alter table course
add foreign key(prn) references student(prn);

alter table faculty
add foreign key(dept_id) references department(dept_id),
add foreign key(c_id) references course(c_id);

alter table student
add foreign key(dept_id) references department(dept_id);

insert into college_data values(43,"Suyog", "Patil", "23/04/2002", "suyog.patil@walchandsangli.ac.in",03,"it","1it", "DBK sir", 50,"c3", "CA" ,2500);
insert into college_data values(42,"Shivaprasad", "Umshette", "04/09/2002", "shivaprasad.umshette@walchandsangli.ac.in",03,"it","1it", "DBK sir", 50,"c3", "CA" ,2500);
insert into college_data values(63,"Rutuja", "Khilare", "02/04/2003", "rutuja.khilare@walchandsangli.ac.in",03,"it","1it", "DBK sir", 50,"c3", "CA" ,2500);

insert into department values(01, "mech");
insert into department values(02, "civil");
insert into department values(03, "it");
insert into department values(04, "ele");
insert into department values(05, "eln");


insert into student values(43,"Suyog", "Patil", "23/04/2002", "suyog.patil@walchandsangli.ac.in",03);
insert into student values(42,"Shivaprasad", "Umshette", "04/09/2002", "shivaprasad.umshette@walchandsangli.ac.in", 03);
insert into student values(10,"Shikha", "Choudari","30/07/2002", "shikha.choudari@walchandsangli.ac.in", 03);
insert into student values(2,"Sonali", "Kaingade",null,null,03);
insert into student values(63,"Rutuja", "Khilare","02/04/2003","rutuja.khilare@walchandsangli.ac.in", 03);
insert into student values(52,"Supriya", "Pawar","02/03/2002","supriya.pawar@walchandsangli.ac.in", 03);


insert into course values("c1", "DBMS" , 43, 2300);
insert into course values("c2", "OS" , 42, 1999);
insert into course values("c3", "CA" , 10, 2500);
insert into course values("c4", "Basic civil" , 2, 3000);
insert into course values("c5", "DMPG" , 63, 2150);


insert into faculty values("1it", "DBK sir", 50, 03, "c3");
insert into faculty values("2it", "Raathi sir", 30, 03, "c1");
insert into faculty values("3it", "Dabade mam", 35, 03, "c2");
insert into faculty values("1cv", "Gopal sir", 45, 02, "c4");


insert into study values(43, "c1");
insert into study values(42, "c2");
insert into study values(10, "c3");
insert into study values(2, "c4");
insert into study values(63, "c5");
insert into study values(52, "c3");

