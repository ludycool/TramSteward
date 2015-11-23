/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     2015/9/18 15:27:42                           */
/*==============================================================*/


if exists(
   select 1 from sys.systable 
   where table_name='SSO_APP'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table SSO_APP
end if;

if exists(
   select 1 from sys.systable 
   where table_name='SSO_LoginLog'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table SSO_LoginLog
end if;

if exists(
   select 1 from sys.systable 
   where table_name='SSO_Users'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table SSO_Users
end if;

/*==============================================================*/
/* Table: SSO_APP                                               */
/*==============================================================*/
create table SSO_APP 
(
   Id                   uniqueidentifier               not null,
   ImgeUrl              nvarchar(200)                  null,
   CName                nvarchar(50)                   null,
   AppId                uniqueidentifier               null,
   Url                  nvarchar(50)                   null,
   Category             nvarchar(20)                   null,
   Details              text                           null,
   publickey            nvarchar(200)                  null,
   privatekey           nvarchar(200)                  null,
   AddTime              datetime                       null,
   UpdateTime           datetime                       null,
   constraint PK_SSO_APP primary key clustered (Id)
);

/*==============================================================*/
/* Table: SSO_LoginLog                                          */
/*==============================================================*/
create table SSO_LoginLog 
(
   Id                   uniqueidentifier               not null,
   UserName             nvarchar(20)                   null,
   InnerIP              nvarchar(30)                   null,
   Outside              nvarchar(30)                   null,
   PhysicalAddress      nvarchar(50)                   null,
   SSO_APP              nvarchar(50)                   null,
   Category             nvarchar(20)                   null,
   Details              nvarchar(50)                   null,
   LoginTime            datetime                       null,
   constraint PK_SSO_LOGINLOG primary key clustered (Id)
);

/*==============================================================*/
/* Table: SSO_Users                                             */
/*==============================================================*/
create table SSO_Users 
(
   Id                   uniqueidentifier               not null,
   ImgeUrl              nvarchar(200)                  null,
   TrueName             nvarchar(20)                   null,
   UserName             nvarchar(20)                   null,
   Pwd                  nvarchar(20)                   null,
   Phone                nvarchar(20)                   null,
   Address              nvarchar(200)                  null,
   Category             nvarchar(20)                   null,
   Details              text                           null,
   AddTime              datetime                       null,
   UpdateTime           datetime                       null,
   constraint PK_SSO_USERS primary key clustered (Id)
);

