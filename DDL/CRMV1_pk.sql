/*
<<<<<<< HEAD
28/05/201611:32:35 PM - tgray
=======
08/06/201611:30:55 PM - tgray
>>>>>>> develop
*/
ALTER TABLE ADDRESSES ADD PRIMARY KEY (ID);
ALTER TABLE ADDRESS_TYPES ADD PRIMARY KEY (ID);
ALTER TABLE APPLICATION_COMPONENTS ADD PRIMARY KEY (APPLICATION_NAME, SUBJECT_AREA);
ALTER TABLE APPLICATION_MASTER ADD PRIMARY KEY (APPLICATION_NAME);
ALTER TABLE GLOBAL_OPTIONS ADD PRIMARY KEY (APPLICATION_NAME, MODULE_TYPE_CODE);
<<<<<<< HEAD
=======
ALTER TABLE MESSAGE_MASTER ADD PRIMARY KEY (MESSAGE_ID);
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
<<<<<<< HEAD
ALTER TABLE PERSON_CALENDAR_EVENTS ADD PRIMARY KEY (ID);
=======
ALTER TABLE PERSON_CALENDAR_EVENTS ADD CONSTRAINT ID_PK PRIMARY KEY (ID);
>>>>>>> develop
