---------------------------------------------
-- Export file for user SYSTEM             --
-- Created by henco on 2019/11/2, 19:52:39 --
---------------------------------------------

spool ±¸·Ý.log

prompt
prompt Creating table MENU
prompt ===================
prompt
create table MENU
(
  MENU_ID   NUMBER(6) not null,
  MENU_NAME VARCHAR2(100) not null,
  PARENT_ID NUMBER(6) not null,
  URL       VARCHAR2(1000)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table MENU
  add constraint PK_MENU primary key (MENU_ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ROLE
prompt ===================
prompt
create table ROLE
(
  ROLE_ID   NUMBER(6) not null,
  ROLE_NAME VARCHAR2(100) not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table ROLE
  add constraint PK_ROLE primary key (ROLE_ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AUTHORIZATION
prompt ============================
prompt
create table AUTHORIZATION
(
  AUTHORIZATION_ID NUMBER(6) not null,
  ROLE_ID          NUMBER(6) not null,
  MENU_ID          NUMBER(6) not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table AUTHORIZATION
  add constraint PK_AUTHORIZATION primary key (AUTHORIZATION_ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table AUTHORIZATION
  add constraint FK_AUTHORIZ_AUTHORIZA_MENU foreign key (MENU_ID)
  references MENU (MENU_ID) on delete cascade;
alter table AUTHORIZATION
  add constraint FK_AUTHORIZ_AUTHORIZA_ROLE foreign key (ROLE_ID)
  references ROLE (ROLE_ID) on delete cascade;

prompt
prompt Creating table OPERATOR
prompt =======================
prompt
create table OPERATOR
(
  OPERATOR_ID NUMBER(6) not null,
  USERNAME    VARCHAR2(200) not null,
  PASSWORD    VARCHAR2(200) not null,
  IMAGE       VARCHAR2(1000),
  ROLE_ID     NUMBER(6) not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OPERATOR
  add constraint PK_OPERATOR primary key (OPERATOR_ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OPERATOR
  add constraint FK_OPERATOR_OPERATOR__ROLE foreign key (ROLE_ID)
  references ROLE (ROLE_ID) on delete cascade;


spool off
