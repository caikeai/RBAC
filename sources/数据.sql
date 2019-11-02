prompt PL/SQL Developer import file
prompt Created on 2019年11月2日 by henco
set feedback off
set define off
prompt Disabling triggers for MENU...
alter table MENU disable all triggers;
prompt Disabling triggers for ROLE...
alter table ROLE disable all triggers;
prompt Disabling triggers for AUTHORIZATION...
alter table AUTHORIZATION disable all triggers;
prompt Disabling triggers for OPERATOR...
alter table OPERATOR disable all triggers;
prompt Disabling foreign key constraints for AUTHORIZATION...
alter table AUTHORIZATION disable constraint FK_AUTHORIZ_AUTHORIZA_MENU;
alter table AUTHORIZATION disable constraint FK_AUTHORIZ_AUTHORIZA_ROLE;
prompt Disabling foreign key constraints for OPERATOR...
alter table OPERATOR disable constraint FK_OPERATOR_OPERATOR__ROLE;
prompt Deleting OPERATOR...
delete from OPERATOR;
commit;
prompt Deleting AUTHORIZATION...
delete from AUTHORIZATION;
commit;
prompt Deleting ROLE...
delete from ROLE;
commit;
prompt Deleting MENU...
delete from MENU;
commit;
prompt Loading MENU...
insert into MENU (MENU_ID, MENU_NAME, PARENT_ID, URL)
values (1, '业务中心', 0, null);
insert into MENU (MENU_ID, MENU_NAME, PARENT_ID, URL)
values (2, '系统管理', 0, null);
insert into MENU (MENU_ID, MENU_NAME, PARENT_ID, URL)
values (3, '安全管理', 0, null);
insert into MENU (MENU_ID, MENU_NAME, PARENT_ID, URL)
values (4, '短信群发', 1, 'xxx.html');
insert into MENU (MENU_ID, MENU_NAME, PARENT_ID, URL)
values (5, '修改用户密码', 2, 'yyy.html');
insert into MENU (MENU_ID, MENU_NAME, PARENT_ID, URL)
values (6, '权限管理', 0, null);
insert into MENU (MENU_ID, MENU_NAME, PARENT_ID, URL)
values (7, '菜单管理', 6, 'menu');
insert into MENU (MENU_ID, MENU_NAME, PARENT_ID, URL)
values (8, '测试菜单1', 0, null);
insert into MENU (MENU_ID, MENU_NAME, PARENT_ID, URL)
values (16, '权限调度', 6, 'authorization1');
commit;
prompt 9 records loaded
prompt Loading ROLE...
insert into ROLE (ROLE_ID, ROLE_NAME)
values (1, '超级管理员');
insert into ROLE (ROLE_ID, ROLE_NAME)
values (2, '管理员');
commit;
prompt 2 records loaded
prompt Loading AUTHORIZATION...
insert into AUTHORIZATION (AUTHORIZATION_ID, ROLE_ID, MENU_ID)
values (1, 1, 1);
insert into AUTHORIZATION (AUTHORIZATION_ID, ROLE_ID, MENU_ID)
values (2, 1, 2);
insert into AUTHORIZATION (AUTHORIZATION_ID, ROLE_ID, MENU_ID)
values (3, 1, 6);
insert into AUTHORIZATION (AUTHORIZATION_ID, ROLE_ID, MENU_ID)
values (4, 1, 7);
insert into AUTHORIZATION (AUTHORIZATION_ID, ROLE_ID, MENU_ID)
values (5, 1, 8);
insert into AUTHORIZATION (AUTHORIZATION_ID, ROLE_ID, MENU_ID)
values (8, 1, 16);
commit;
prompt 6 records loaded
prompt Loading OPERATOR...
insert into OPERATOR (OPERATOR_ID, USERNAME, PASSWORD, IMAGE, ROLE_ID)
values (1, 'zs', 'zs', null, 1);
commit;
prompt 1 records loaded
prompt Enabling foreign key constraints for AUTHORIZATION...
alter table AUTHORIZATION enable constraint FK_AUTHORIZ_AUTHORIZA_MENU;
alter table AUTHORIZATION enable constraint FK_AUTHORIZ_AUTHORIZA_ROLE;
prompt Enabling foreign key constraints for OPERATOR...
alter table OPERATOR enable constraint FK_OPERATOR_OPERATOR__ROLE;
prompt Enabling triggers for MENU...
alter table MENU enable all triggers;
prompt Enabling triggers for ROLE...
alter table ROLE enable all triggers;
prompt Enabling triggers for AUTHORIZATION...
alter table AUTHORIZATION enable all triggers;
prompt Enabling triggers for OPERATOR...
alter table OPERATOR enable all triggers;
set feedback on
set define on
prompt Done.
