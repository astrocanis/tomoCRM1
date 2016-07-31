/*
<<<<<<< HEAD
08/06/201611:30:55 PM - tgray
=======
<<<<<<< HEAD
08/06/201611:30:55 PM - tgray
=======
28/05/201611:32:35 PM - tgray
>>>>>>> master
>>>>>>> develop
*/
<<<<<<< Updated upstream
create unique index xpkapplication_components 
  on application_components (application_name, subject_area);
create unique index appmas_pk 
  on application_master (application_name);
create unique index globopt_pk 
  on global_options (application_name, module_type_code);
create unique index xak1message_master 
  on message_master (application_name, message_source, message_code);
create unique index msgmas_pk 
  on message_master (message_id);
create unique index modmas_pk 
  on module_master (module_name);
create unique index modnet_pk 
  on module_network_master (parent_module, child_module);
create index address_id 
  on person_addresses (address_id);
create index person_id 
  on person_addresses (person_id);
create unique index rmod_pk 
  on role_modules (role_id, module_name);
create unique index rmdet_pk 
  on role_module_details (role_id, module_name, area_name, item_name);
create unique index ucfg_pk 
  on user_config_options (user_id);
create unique index ucfgdet_pk 
  on user_config_option_details (user_id, app_type);
create unique index umod_pk 
  on user_modules (user_id, module_name);
create unique index umdet_pk 
  on user_module_details (user_id, module_name, area_name, item_name);
create unique index uoat_pk 
  on user_option_application_types (app_type);
create fulltext index calendar_events 
  on calendar_events (notes);
create fulltext index person_calendar_events 
  on person_calendar_events (notes);
=======
CREATE UNIQUE INDEX XPKAPPLICATION_COMPONENTS 
  ON APPLICATION_COMPONENTS (APPLICATION_NAME, SUBJECT_AREA);
CREATE UNIQUE INDEX APPMAS_PK 
  ON APPLICATION_MASTER (APPLICATION_NAME);
CREATE UNIQUE INDEX GLOBOPT_PK 
  ON GLOBAL_OPTIONS (APPLICATION_NAME, MODULE_TYPE_CODE);
CREATE UNIQUE INDEX XAK1MESSAGE_MASTER 
  ON MESSAGE_MASTER (APPLICATION_NAME, MESSAGE_SOURCE, MESSAGE_CODE);
CREATE UNIQUE INDEX MSGMAS_PK 
  ON MESSAGE_MASTER (MESSAGE_ID);
CREATE UNIQUE INDEX MODMAS_PK 
  ON MODULE_MASTER (MODULE_NAME);
CREATE UNIQUE INDEX MODNET_PK 
  ON MODULE_NETWORK_MASTER (PARENT_MODULE, CHILD_MODULE);
CREATE INDEX ADDRESS_ID 
  ON PERSON_ADDRESSES (ADDRESS_ID);
CREATE INDEX PERSON_ID 
  ON PERSON_ADDRESSES (PERSON_ID);
CREATE UNIQUE INDEX RMOD_PK 
  ON ROLE_MODULES (ROLE_ID, MODULE_NAME);
CREATE UNIQUE INDEX RMDET_PK 
  ON ROLE_MODULE_DETAILS (ROLE_ID, MODULE_NAME, AREA_NAME, ITEM_NAME);
CREATE UNIQUE INDEX UCFG_PK 
  ON USER_CONFIG_OPTIONS (USER_ID);
CREATE UNIQUE INDEX UCFGDET_PK 
  ON USER_CONFIG_OPTION_DETAILS (USER_ID, APP_TYPE);
CREATE UNIQUE INDEX UMOD_PK 
  ON USER_MODULES (USER_ID, MODULE_NAME);
CREATE UNIQUE INDEX UMDET_PK 
  ON USER_MODULE_DETAILS (USER_ID, MODULE_NAME, AREA_NAME, ITEM_NAME);
CREATE UNIQUE INDEX UOAT_PK 
  ON USER_OPTION_APPLICATION_TYPES (APP_TYPE);
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> develop
CREATE FULLTEXT INDEX CALENDAR_EVENTS 
  ON CALENDAR_EVENTS (NOTES);
CREATE FULLTEXT INDEX PERSON_CALENDAR_EVENTS 
  ON PERSON_CALENDAR_EVENTS (NOTES);
<<<<<<< HEAD
=======
=======
>>>>>>> master
>>>>>>> develop
>>>>>>> Stashed changes
