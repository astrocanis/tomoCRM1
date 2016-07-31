/*
<<<<<<< HEAD
<<<<<<< HEAD
28/05/201611:32:35 PM - tgray
=======
08/06/201611:30:55 PM - tgray
>>>>>>> develop
=======
08/06/201611:30:55 PM - tgray
=======
28/05/201611:32:35 PM - tgray
>>>>>>> master
>>>>>>> develop
*/
<<<<<<< Updated upstream
alter table addresses add primary key (id);
alter table address_types add primary key (id);
alter table application_components add primary key (application_name, subject_area);
alter table application_master add primary key (application_name);
alter table global_options add primary key (application_name, module_type_code);
-- <<<<<<< head
-- =======
alter table message_master add primary key (message_id);
-- >>>>>>> develop
alter table module_master add primary key (module_name);
alter table module_network_master add primary key (parent_module, child_module);
alter table organizations add primary key (id);
alter table organization_persons add primary key (id);
alter table organization_types add primary key (id);
alter table persons add primary key (id);
alter table person_addresses add primary key (id);
alter table roles add primary key (id);
alter table role_modules add primary key (role_id, module_name);
alter table role_module_details add primary key (role_id, module_name, area_name, item_name);
alter table role_users add primary key (user_id, role_id);
alter table users add primary key (id);
alter table user_config_options add primary key (user_id);
alter table user_config_option_details add primary key (user_id, app_type);
alter table user_modules add primary key (user_id, module_name);
alter table user_module_details add primary key (user_id, module_name, area_name, item_name);
alter table user_option_application_types add primary key (app_type);
alter table person_phones add primary key (id);
alter table person_social_media add primary key (id);
alter table social_media_types add primary key (id);
alter table organization_addresses add primary key (organization_id, address_id);
alter table calendar_events add primary key (id);
alter table calendar_master add primary key (id);
alter table person_calendars add primary key (id);
-- <<<<<<< head
-- alter table person_calendar_events add primary key (id);
-- =======
alter table person_calendar_events add constraint id_pk primary key (id);
-- >>>>>>> develop
=======
ALTER TABLE ADDRESSES ADD PRIMARY KEY (ID);
ALTER TABLE ADDRESS_TYPES ADD PRIMARY KEY (ID);
ALTER TABLE APPLICATION_COMPONENTS ADD PRIMARY KEY (APPLICATION_NAME, SUBJECT_AREA);
ALTER TABLE APPLICATION_MASTER ADD PRIMARY KEY (APPLICATION_NAME);
ALTER TABLE GLOBAL_OPTIONS ADD PRIMARY KEY (APPLICATION_NAME, MODULE_TYPE_CODE);
<<<<<<< HEAD
<<<<<<< HEAD
=======
ALTER TABLE MESSAGE_MASTER ADD PRIMARY KEY (MESSAGE_ID);
>>>>>>> develop
=======
ALTER TABLE MESSAGE_MASTER ADD PRIMARY KEY (MESSAGE_ID);
=======
>>>>>>> master
>>>>>>> develop
ALTER TABLE MODULE_MASTER ADD PRIMARY KEY (MODULE_NAME);
ALTER TABLE MODULE_NETWORK_MASTER ADD PRIMARY KEY (PARENT_MODULE, CHILD_MODULE);
ALTER TABLE ORGANIZATIONS ADD PRIMARY KEY (ID);
ALTER TABLE ORGANIZATION_PERSONS ADD PRIMARY KEY (ID);
ALTER TABLE ORGANIZATION_TYPES ADD PRIMARY KEY (ID);
ALTER TABLE PERSONS ADD PRIMARY KEY (ID);
ALTER TABLE PERSON_ADDRESSES ADD PRIMARY KEY (ID);
ALTER TABLE ROLES ADD PRIMARY KEY (ID);
ALTER TABLE ROLE_MODULES ADD PRIMARY KEY (ROLE_ID, MODULE_NAME);
ALTER TABLE ROLE_MODULE_DETAILS ADD PRIMARY KEY (ROLE_ID, MODULE_NAME, AREA_NAME, ITEM_NAME);
ALTER TABLE ROLE_USERS ADD PRIMARY KEY (USER_ID, ROLE_ID);
ALTER TABLE USERS ADD PRIMARY KEY (ID);
ALTER TABLE USER_CONFIG_OPTIONS ADD PRIMARY KEY (USER_ID);
ALTER TABLE USER_CONFIG_OPTION_DETAILS ADD PRIMARY KEY (USER_ID, APP_TYPE);
ALTER TABLE USER_MODULES ADD PRIMARY KEY (USER_ID, MODULE_NAME);
ALTER TABLE USER_MODULE_DETAILS ADD PRIMARY KEY (USER_ID, MODULE_NAME, AREA_NAME, ITEM_NAME);
ALTER TABLE USER_OPTION_APPLICATION_TYPES ADD PRIMARY KEY (APP_TYPE);
ALTER TABLE PERSON_PHONES ADD PRIMARY KEY (ID);
ALTER TABLE PERSON_SOCIAL_MEDIA ADD PRIMARY KEY (ID);
ALTER TABLE SOCIAL_MEDIA_TYPES ADD PRIMARY KEY (ID);
ALTER TABLE ORGANIZATION_ADDRESSES ADD PRIMARY KEY (ORGANIZATION_ID, ADDRESS_ID);
ALTER TABLE CALENDAR_EVENTS ADD PRIMARY KEY (ID);
ALTER TABLE CALENDAR_MASTER ADD PRIMARY KEY (ID);
ALTER TABLE PERSON_CALENDARS ADD PRIMARY KEY (ID);
ALTER TABLE CALENDAR_DETAILS2 ADD PRIMARY KEY (ID);
ALTER TABLE CALENDAR_MASTER2 ADD PRIMARY KEY (ID);
ALTER TABLE PERSON_CALENDARS2 ADD PRIMARY KEY (ID);
<<<<<<< HEAD
<<<<<<< HEAD
ALTER TABLE PERSON_CALENDAR_EVENTS ADD PRIMARY KEY (ID);
=======
ALTER TABLE PERSON_CALENDAR_EVENTS ADD CONSTRAINT ID_PK PRIMARY KEY (ID);
>>>>>>> develop
=======
ALTER TABLE PERSON_CALENDAR_EVENTS ADD CONSTRAINT ID_PK PRIMARY KEY (ID);
=======
ALTER TABLE PERSON_CALENDAR_EVENTS ADD PRIMARY KEY (ID);
>>>>>>> master
>>>>>>> develop
>>>>>>> Stashed changes
