create database hdd_db@
connect to hdd_db@
create table Square(Sno int,Square int)@
create table complaint_master(COMPLAINTID BIGINT not null,USEREMAIL VARCHAR(50) not null,DOMAIN VARCHAR(30) not null,SUBDOMAIN VARCHAR(30) not null,DESCRIPTION VARCHAR(300) not null,DATEPOSTED VARCHAR(20) not null,STATUS VARCHAR(15) not null,constraint pk_cm primary key (complaintid))@
create table domain_master(domainid BIGINT not null,name VARCHAR(30) not null, constraint pk_dm primary key (domainid))@
create table user_master(AADHARNO VARCHAR(12) not null, FNAME VARCHAR (25) not null, LNAME VARCHAR(25) not null, EMAILID VARCHAR(50) not null, PASSWORD VARCHAR(20) not null, DOB VARCHAR(20) not null, constraint pk_um primary key (emailid))@
connect reset@