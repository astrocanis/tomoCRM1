/*
<<<<<<< HEAD
28/05/201611:32:35 PM - tgray
=======
08/06/201611:30:55 PM - tgray
>>>>>>> develop
*/
ALTER TABLE PERSON_ADDRESSES ADD INDEX PERSON_ADDRESSES_ibfk_1 (PERSON_ID), ADD CONSTRAINT PERSON_ADDRESSES_ibfk_1 FOREIGN KEY (PERSON_ID) REFERENCES PERSONS (ID) ON UPDATE No action ON DELETE No action;
ALTER TABLE PERSON_ADDRESSES ADD INDEX PERSON_ADDRESSES_ibfk_2 (ADDRESS_ID), ADD CONSTRAINT PERSON_ADDRESSES_ibfk_2 FOREIGN KEY (ADDRESS_ID) REFERENCES ADDRESSES (ID) ON UPDATE No action ON DELETE No action;
ALTER TABLE USER_MODULES ADD INDEX FKUSER_MODUL680151 (USER_ID), ADD CONSTRAINT FKUSER_MODUL680151 FOREIGN KEY (USER_ID) REFERENCES USERS (ID);
ALTER TABLE USER_MODULES ADD INDEX FKUSER_MODUL400032 (MODULE_NAME), ADD CONSTRAINT FKUSER_MODUL400032 FOREIGN KEY (MODULE_NAME) REFERENCES MODULE_MASTER (MODULE_NAME);
ALTER TABLE USER_MODULE_DETAILS ADD INDEX FKUSER_MODUL394998 (USER_ID, MODULE_NAME), ADD CONSTRAINT FKUSER_MODUL394998 FOREIGN KEY (USER_ID, MODULE_NAME) REFERENCES USER_MODULES (USER_ID, MODULE_NAME);
ALTER TABLE ROLE_MODULES ADD INDEX FKROLE_MODUL913830 (ROLE_ID), ADD CONSTRAINT FKROLE_MODUL913830 FOREIGN KEY (ROLE_ID) REFERENCES ROLES (ID);
ALTER TABLE ROLE_MODULE_DETAILS ADD INDEX FKROLE_MODUL249085 (ROLE_ID, MODULE_NAME), ADD CONSTRAINT FKROLE_MODUL249085 FOREIGN KEY (ROLE_ID, MODULE_NAME) REFERENCES ROLE_MODULES (ROLE_ID, MODULE_NAME);
ALTER TABLE PERSON_ADDRESSES ADD INDEX FKPERSON_ADD300675 (ADDRESS_TYPE_ID), ADD CONSTRAINT FKPERSON_ADD300675 FOREIGN KEY (ADDRESS_TYPE_ID) REFERENCES ADDRESS_TYPES (ID);
ALTER TABLE ROLE_MODULES ADD INDEX FKROLE_MODUL670106 (MODULE_NAME), ADD CONSTRAINT FKROLE_MODUL670106 FOREIGN KEY (MODULE_NAME) REFERENCES MODULE_MASTER (MODULE_NAME);
ALTER TABLE MODULE_NETWORK_MASTER ADD INDEX FKMODULE_NET5037 (PARENT_MODULE), ADD CONSTRAINT FKMODULE_NET5037 FOREIGN KEY (PARENT_MODULE) REFERENCES MODULE_MASTER (MODULE_NAME);
ALTER TABLE MODULE_NETWORK_MASTER ADD INDEX FKMODULE_NET905967 (CHILD_MODULE), ADD CONSTRAINT FKMODULE_NET905967 FOREIGN KEY (CHILD_MODULE) REFERENCES MODULE_MASTER (MODULE_NAME);
ALTER TABLE ORGANIZATIONS ADD INDEX FKORGANIZATI103696 (PARENT_ORGANIZATION_ID), ADD CONSTRAINT FKORGANIZATI103696 FOREIGN KEY (PARENT_ORGANIZATION_ID) REFERENCES ORGANIZATIONS (ID);
ALTER TABLE PERSON_PHONES ADD INDEX FKPERSON_PHO118846 (PERSON_ID), ADD CONSTRAINT FKPERSON_PHO118846 FOREIGN KEY (PERSON_ID) REFERENCES PERSONS (ID);
ALTER TABLE PERSON_SOCIAL_MEDIA ADD INDEX FKPERSON_SOC296414 (PERSON_ID), ADD CONSTRAINT FKPERSON_SOC296414 FOREIGN KEY (PERSON_ID) REFERENCES PERSONS (ID);
ALTER TABLE PERSON_SOCIAL_MEDIA ADD INDEX FKPERSON_SOC625839 (SOCIAL_MEDIA_TYPE_ID), ADD CONSTRAINT FKPERSON_SOC625839 FOREIGN KEY (SOCIAL_MEDIA_TYPE_ID) REFERENCES SOCIAL_MEDIA_TYPES (ID);
ALTER TABLE ORGANIZATION_PERSONS ADD INDEX FKORGANIZATI712927 (PERSON_ID), ADD CONSTRAINT FKORGANIZATI712927 FOREIGN KEY (PERSON_ID) REFERENCES PERSONS (ID);
ALTER TABLE ORGANIZATION_PERSONS ADD INDEX FKORGANIZATI189823 (ORGANIZATION_ID), ADD CONSTRAINT FKORGANIZATI189823 FOREIGN KEY (ORGANIZATION_ID) REFERENCES ORGANIZATIONS (ID);
ALTER TABLE ORGANIZATIONS ADD INDEX FKORGANIZATI618711 (ORGANIZATION_TYPE_ID), ADD CONSTRAINT FKORGANIZATI618711 FOREIGN KEY (ORGANIZATION_TYPE_ID) REFERENCES ORGANIZATION_TYPES (ID);
ALTER TABLE ORGANIZATION_ADDRESSES ADD INDEX FKORGANIZATI366785 (ORGANIZATION_ID), ADD CONSTRAINT FKORGANIZATI366785 FOREIGN KEY (ORGANIZATION_ID) REFERENCES ORGANIZATIONS (ID);
ALTER TABLE ORGANIZATION_ADDRESSES ADD INDEX FKORGANIZATI163217 (ADDRESS_ID), ADD CONSTRAINT FKORGANIZATI163217 FOREIGN KEY (ADDRESS_ID) REFERENCES ADDRESSES (ID);
ALTER TABLE ORGANIZATION_ADDRESSES ADD INDEX FKORGANIZATI870955 (ADDRESS_TYPE_ID), ADD CONSTRAINT FKORGANIZATI870955 FOREIGN KEY (ADDRESS_TYPE_ID) REFERENCES ADDRESS_TYPES (ID);
ALTER TABLE CALENDAR_EVENTS ADD INDEX FKCALENDAR_DETAIL_CALENDAR (CALENDAR_ID), ADD CONSTRAINT FKCALENDAR_DETAIL_CALENDAR FOREIGN KEY (CALENDAR_ID) REFERENCES CALENDAR_MASTER (ID) ON UPDATE No action ON DELETE No action;
ALTER TABLE USERS ADD INDEX FKUSERS570288 (PERSON_ID), ADD CONSTRAINT FKUSERS570288 FOREIGN KEY (PERSON_ID) REFERENCES PERSONS (ID) ON UPDATE No action ON DELETE No action;
ALTER TABLE CALENDAR_DETAILS2 ADD INDEX NA (CALENDAR_ID), ADD CONSTRAINT NA FOREIGN KEY (CALENDAR_ID) REFERENCES CALENDAR_MASTER2 (ID) ON UPDATE No action ON DELETE No action;
ALTER TABLE PERSON_CALENDARS ADD INDEX FKPERSON_CAL450969 (CALENDAR_OWNER_ID), ADD CONSTRAINT FKPERSON_CAL450969 FOREIGN KEY (CALENDAR_OWNER_ID) REFERENCES PERSONS (ID);
ALTER TABLE PERSON_CALENDARS ADD INDEX FKPERSON_CAL215426 (CALENDAR_ID), ADD CONSTRAINT FKPERSON_CAL215426 FOREIGN KEY (CALENDAR_ID) REFERENCES CALENDAR_MASTER (ID);
ALTER TABLE PERSON_CALENDAR_EVENTS ADD INDEX FKPERSON_CAL508185 (PERSON_CALENDARS_ID), ADD CONSTRAINT FKPERSON_CAL508185 FOREIGN KEY (PERSON_CALENDARS_ID) REFERENCES PERSON_CALENDARS (ID);
ALTER TABLE CALENDAR_MASTER ADD INDEX FKCALENDAR_M988093 (INHERITS_FROM_CALENDAR_ID), ADD CONSTRAINT FKCALENDAR_M988093 FOREIGN KEY (INHERITS_FROM_CALENDAR_ID) REFERENCES CALENDAR_MASTER (ID);
ALTER TABLE CALENDAR_EVENTS ADD INDEX FKCALENDAR_E760270 (CALENDAR_ID), ADD CONSTRAINT FKCALENDAR_E760270 FOREIGN KEY (CALENDAR_ID) REFERENCES CALENDAR_MASTER (ID);
