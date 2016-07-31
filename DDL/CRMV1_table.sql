<<<<<<< HEAD
/*
<<<<<<< HEAD
<<<<<<< HEAD
28/05/201611:32:35 PM - tgray
*/
/*
CREATE TABLE ADDRESSES (
/*  ID                varchar(30) NOT NULL, 
=======
08/06/201611:30:55 PM - tgray
*/
CREATE TABLE ADDRESSES (
<<<<<<< HEAD
  ID                varchar(75) NOT NULL,
  NAME              varchar(50) NOT NULL,
  LINE1             varchar(100) NOT NULL,
  LINE2             varchar(100),
  CITY              varchar(50) NOT NULL,
  COUNTY            varchar(50),
  STATE_OR_PROVINCE varchar(50) NOT NULL,
  POSTAL_CODE       varchar(30),
  COUNTRY           varchar(50),
  ADDRESS_NOTES     varchar(1000),
  ACTIVE_INDICATOR  char(1) DEFAULT 'A' NOT NULL,
  CREATED_BY        varchar(75) NOT NULL,
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  LAST_UPDATED_BY   varchar(75),
  LAST_UPDATE       timestamp) ENGINE=InnoDB;

CREATE TABLE ADDRESS_TYPES (
  ID               varchar(75) NOT NULL,
  TYPE_CODE        varchar(50) NOT NULL,
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL,
  CREATED_BY       varchar(75) NOT NULL,
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  LAST_UPDATED_BY  varchar(50),
  LAST_UPDATE      timestamp) ENGINE=InnoDB;
  CREATED_BY        varchar(75) NOT NULL,
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  LAST_UPDATED_BY   varchar(75),
=======
  ID                varchar(75) NOT NULL, 
>>>>>>> develop
=======
28/05/201611:32:35 PM - tgray
*/
CREATE TABLE ADDRESSES (
<<<<<<< HEAD
  ID                varchar(75) NOT NULL, 
-- >>>>>>> develop
=======
  ID                varchar(30) NOT NULL, 
>>>>>>> master
>>>>>>> develop
  NAME              varchar(50) NOT NULL, 
  LINE1             varchar(100) NOT NULL, 
  LINE2             varchar(100), 
  CITY              varchar(50) NOT NULL, 
  COUNTY            varchar(50), 
  STATE_OR_PROVINCE varchar(50) NOT NULL, 
  POSTAL_CODE       varchar(30), 
  COUNTRY           varchar(50), 
  ADDRESS_NOTES     varchar(1000), 
  ACTIVE_INDICATOR  char(1) DEFAULT 'A' NOT NULL, 
<<<<<<< HEAD
-- <<<<<<< HEAD
  CREATED_BY        varchar(50) NOT NULL, 
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY   varchar(50), 
  LAST_UPDATE       timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL) ENGINE=InnoDB;
CREATE TABLE ADDRESS_TYPES (
  ID               varchar(75) NOT NULL, 
  TYPE_CODE        varchar(50) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
--   CREATED_BY       varchar(50) NOT NULL, 
--   DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
--   LAST_UPDATED_BY  varchar(50), 
--   LAST_UPDATE      timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL) ENGINE=InnoDB;
-- -- =======
=======
<<<<<<< HEAD
>>>>>>> develop
  CREATED_BY        varchar(75) NOT NULL, 
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY   varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE       timestamp DEFAULT '0000-00-00 00:00:00' NULL) ENGINE=InnoDB;
CREATE TABLE ADDRESS_TYPES (
  ID               varchar(75) NOT NULL, 
  TYPE_CODE        varchar(50) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY       varchar(75) NOT NULL, 
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(75), 
  LAST_UPDATE      timestamp DEFAULT '0000-00-00 00:00:00' NULL) ENGINE=InnoDB;
<<<<<<< HEAD
-- >>>>>>> develop
=======
=======
  CREATED_BY        varchar(50) NOT NULL, 
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY   varchar(50), 
  LAST_UPDATE       timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL) ENGINE=InnoDB;
CREATE TABLE ADDRESS_TYPES (
  ID               varchar(30) NOT NULL, 
  TYPE_CODE        varchar(50) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY       varchar(50) NOT NULL, 
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(50), 
  LAST_UPDATE      timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL) ENGINE=InnoDB;
>>>>>>> master
>>>>>>> develop
CREATE TABLE APPLICATION_COMPONENTS (
  APPLICATION_NAME varchar(30) NOT NULL,
  SUBJECT_AREA     varchar(30) NOT NULL,
  DESCRIPTION      varchar(60) NOT NULL) ENGINE=InnoDB;
CREATE TABLE APPLICATION_MASTER (
  APPLICATION_NAME varchar(30) NOT NULL,
  DESCRIPTION      varchar(60)) ENGINE=InnoDB;
CREATE TABLE GLOBAL_OPTIONS (
<<<<<<< HEAD
  APPLICATION_NAME varchar(30) NOT NULL,
  MODULE_TYPE_CODE varchar(8) NOT NULL,
  FILE_NAME        varchar(75),
  GRAPHIC_TYPE     varchar(8),
=======
  APPLICATION_NAME varchar(30) NOT NULL, 
  MODULE_TYPE_CODE varchar(8) NOT NULL, 
  FILE_NAME        varchar(30), 
  GRAPHIC_TYPE     varchar(8), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LOGO_TITLE       varchar(8)) ENGINE=InnoDB;
CREATE TABLE MESSAGE_MASTER (
<<<<<<< HEAD
<<<<<<< Updated upstream
  MESSAGE_ID       varchar(75) NOT NULL,
  MESSAGE_CODE     varchar(8) NOT NULL,
  MESSAGE_SOURCE   varchar(8) NOT NULL,
  APPLICATION_NAME varchar(30) NOT NULL,
  MESSAGE_TEXT     varchar(80) NOT NULL,
  MESSAGE_HELP     varchar(240) NOT NULL,
  MESSAGE_TYPE_IND varchar(1) NOT NULL,
  AUDIT_FLAG       varchar(1) NOT NULL,
  RESPONSE_ROUTING varchar(75),
  CREATED_BY       varchar(75) NOT NULL,
  DATE_CREATED     date NOT NULL,
  LAST_UPDATE_BY   varchar(75),
=======
=======
>>>>>>> Stashed changes
-- <<<<<<< HEAD
--   MESSAGE_ID       int(11) NOT NULL AUTO_INCREMENT, 
-- =======
  MESSAGE_ID       varchar(75) NOT NULL, 
-- >>>>>>> develop
=======
<<<<<<< HEAD
  MESSAGE_ID       varchar(75) NOT NULL, 
=======
  MESSAGE_ID       int(11) NOT NULL AUTO_INCREMENT, 
>>>>>>> master
>>>>>>> develop
  MESSAGE_CODE     varchar(8) NOT NULL, 
  MESSAGE_SOURCE   varchar(8) NOT NULL, 
  APPLICATION_NAME varchar(30) NOT NULL, 
  MESSAGE_TEXT     varchar(80) NOT NULL, 
  MESSAGE_HELP     varchar(240) NOT NULL, 
  MESSAGE_TYPE_IND varchar(1) NOT NULL, 
  AUDIT_FLAG       varchar(1) NOT NULL, 
  RESPONSE_ROUTING varchar(30), 
<<<<<<< HEAD
-- <<<<<<< HEAD
--   CREATED_BY       varchar(30) NOT NULL, 
--   DATE_CREATED     date NOT NULL, 
--   LAST_UPDATE_BY   varchar(30), 
--   LAST_UPDATE      date, 
--   PRIMARY KEY (MESSAGE_ID)) ENGINE=InnoDB;
-- =======
  CREATED_BY       varchar(75) NOT NULL, 
  DATE_CREATED     date NOT NULL, 
  LAST_UPDATE_BY   varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE      date,
  PRIMARY KEY (MESSAGE_ID)) ENGINE=InnoDB;
-- >>>>>>> develop
=======
<<<<<<< HEAD
  CREATED_BY       varchar(75) NOT NULL, 
  DATE_CREATED     date NOT NULL, 
  LAST_UPDATE_BY   varchar(75), 
  LAST_UPDATE      date) ENGINE=InnoDB;
=======
  CREATED_BY       varchar(30) NOT NULL, 
  DATE_CREATED     date NOT NULL, 
  LAST_UPDATE_BY   varchar(30), 
  LAST_UPDATE      date, 
  PRIMARY KEY (MESSAGE_ID)) ENGINE=InnoDB;
>>>>>>> master
>>>>>>> develop
CREATE TABLE MODULE_MASTER (
<<<<<<< HEAD
  MODULE_NAME            varchar(255) DEFAULT '' NOT NULL,
  MODULE_TYPE_CODE       varchar(10) NOT NULL,
  DESCRIPTION            varchar(255),
  APPLICATION_NAME       varchar(255),
  MODULE_SOURCE_PATH     varchar(80),
  MODULE_EXECUTABLE_PATH varchar(80),
  CREATED_BY             varchar(75) NOT NULL,
  DATE_CREATED           timestamp NOT NULL,
  LAST_UPDATED_BY        varchar(75),
=======
  MODULE_NAME            varchar(255) DEFAULT '' NOT NULL, 
  MODULE_TYPE_CODE       varchar(10) NOT NULL, 
  DESCRIPTION            varchar(255), 
  APPLICATION_NAME       varchar(255), 
  MODULE_SOURCE_PATH     varchar(80), 
  MODULE_EXECUTABLE_PATH varchar(80), 
<<<<<<< HEAD
-- <<<<<<< HEAD
--   CREATED_BY             varchar(30) NOT NULL, 
--   DATE_CREATED           timestamp NOT NULL, 
--   LAST_UPDATED_BY        varchar(30), 
-- =======
  CREATED_BY             varchar(75) NOT NULL, 
  DATE_CREATED           timestamp NOT NULL, 
  LAST_UPDATED_BY        varchar(75), 
-- >>>>>>> develop
<<<<<<< Updated upstream
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
=======
=======
<<<<<<< HEAD
  CREATED_BY             varchar(75) NOT NULL, 
  DATE_CREATED           timestamp NOT NULL, 
  LAST_UPDATED_BY        varchar(75), 
=======
  CREATED_BY             varchar(30) NOT NULL, 
  DATE_CREATED           timestamp NOT NULL, 
  LAST_UPDATED_BY        varchar(30), 
>>>>>>> master
>>>>>>> develop
>>>>>>> Stashed changes
  LAST_UPDATE            timestamp NULL) ENGINE=InnoDB;
CREATE TABLE MODULE_NETWORK_MASTER (
  PARENT_MODULE      varchar(255) NOT NULL,
  CHILD_MODULE       varchar(255) NOT NULL,
  CALLING_METHOD_IND varchar(1) NOT NULL) ENGINE=InnoDB;
CREATE TABLE ORGANIZATIONS (
<<<<<<< HEAD
<<<<<<< Updated upstream
  ID                     varchar(75) NOT NULL,
  NAME                   varchar(200) NOT NULL,
  ORGANIZATION_TYPE_ID   varchar(75) NOT NULL,
  ACTIVE_FLAG            char(1) DEFAULT 'A' NOT NULL,
  CREATED_BY             varchar(75) NOT NULL,
  DATE_CREATED           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  LAST_UPDATED_BY        varchar(75),
  LAST_UPDATE            timestamp,
=======
=======
>>>>>>> Stashed changes
-- <<<<<<< HEAD
--   ID                     varchar(30) NOT NULL, 
--   NAME                   varchar(200) NOT NULL, 
--   ORGANIZATION_TYPE_ID   varchar(30) NOT NULL, 
-- =======
  ID                     varchar(75) NOT NULL, 
  NAME                   varchar(200) NOT NULL, 
  ORGANIZATION_TYPE_ID   varchar(75) NOT NULL, 
-- >>>>>>> develop
=======
<<<<<<< HEAD
  ID                     varchar(75) NOT NULL, 
  NAME                   varchar(200) NOT NULL, 
  ORGANIZATION_TYPE_ID   varchar(75) NOT NULL, 
=======
  ID                     varchar(30) NOT NULL, 
  NAME                   varchar(200) NOT NULL, 
  ORGANIZATION_TYPE_ID   varchar(30) NOT NULL, 
>>>>>>> master
>>>>>>> develop
  ACTIVE_FLAG            char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY             varchar(75) NOT NULL, 
  DATE_CREATED           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
<<<<<<< HEAD
  LAST_UPDATED_BY        varchar(75), 
-- <<<<<<< HEAD
  LAST_UPDATE            timestamp, 
<<<<<<< Updated upstream
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
=======
=======
  LAST_UPDATED_BY        varchar(50), 
<<<<<<< HEAD
  LAST_UPDATE            timestamp DEFAULT '0000-00-00 00:00:00' NULL, 
>>>>>>> develop
>>>>>>> Stashed changes
  PARENT_ORGANIZATION_ID varchar(75) NOT NULL) ENGINE=InnoDB;
CREATE TABLE ORGANIZATION_PERSONS (
<<<<<<< HEAD
  ID               varchar(75) NOT NULL,
  ORGANIZATION_ID  varchar(75) NOT NULL,
  PERSON_ID        varchar(75) NOT NULL,
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL,
  ORG_POSITION     varchaar(50),
  CREATED_BY       varchar(75) NOT NULL,
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  LAST_UPDATED_BY  varchar(75),
=======
  ID               varchar(75) NOT NULL, 
  ORGANIZATION_ID  varchar(75) NOT NULL, 
  PERSON_ID        varchar(75) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY       varchar(75) NOT NULL, 
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE      timestamp) ENGINE=InnoDB;
CREATE TABLE ORGANIZATION_TYPES (
  ID               varchar(75) NOT NULL,
  TYPE_CODE        varchar(50) NOT NULL,
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL,
  CREATED_BY       varchar(75) NOT NULL,
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  LAST_UPDATED_BY  varchar(75),
  LAST_UPDATE      timestamp) ENGINE=InnoDB;
-- CREATE TABLE PERSONS (
--   ID               varchar(30) NOT NULL, 
-- =======
--   LAST_UPDATE            timestamp DEFAULT '0000-00-00 00:00:00' NULL, 
--   PARENT_ORGANIZATION_ID varchar(75) NOT NULL) ENGINE=InnoDB;
CREATE TABLE ORGANIZATION_PERSONS (
  ID               varchar(75) NOT NULL, 
  ORGANIZATION_ID  varchar(75) NOT NULL, 
  PERSON_ID        varchar(75) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY       varchar(75) NOT NULL, 
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(75), 
  LAST_UPDATE      timestamp) ENGINE=InnoDB;
-- CREATE TABLE ORGANIZATION_TYPES (
--   ID               varchar(75) NOT NULL, 
--   TYPE_CODE        varchar(50) NOT NULL, 
--   ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
--   CREATED_BY       varchar(75) NOT NULL, 
--   DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
--   LAST_UPDATED_BY  varchar(75), 
--   LAST_UPDATE      timestamp DEFAULT '0000-00-00 00:00:00' NULL) ENGINE=InnoDB;
CREATE TABLE PERSONS (
<<<<<<< HEAD
  ID               varchar(75) NOT NULL,
  LAST_NAME        varchar(50) NOT NULL,
  FIRST_NAME       varchar(50) NOT NULL,
  MIDDLE_NAME      varchar(50),
  DATE_OF_BIRTH    date,
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL,
  CREATED_BY       varchar(75) NOT NULL,
  CREATED_DATE     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  LAST_UPDATED_BY  varchar(75),
=======
  ID               varchar(75) NOT NULL, 
<<<<<<< HEAD
-- >>>>>>> develop
=======
=======
  LAST_UPDATE            timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL, 
  PARENT_ORGANIZATION_ID varchar(30) NOT NULL) ENGINE=InnoDB;
CREATE TABLE ORGANIZATION_PERSONS (
  ID               varchar(30) NOT NULL, 
  ORGANIZATION_ID  varchar(30) NOT NULL, 
  PERSON_ID        varchar(30) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY       varchar(50) NOT NULL, 
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(50), 
  LAST_UPDATE      timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL) ENGINE=InnoDB;
CREATE TABLE ORGANIZATION_TYPES (
  ID               varchar(30) NOT NULL, 
  TYPE_CODE        varchar(50) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY       varchar(50) NOT NULL, 
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(50), 
  LAST_UPDATE      timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL) ENGINE=InnoDB;
CREATE TABLE PERSONS (
  ID               varchar(30) NOT NULL, 
>>>>>>> master
>>>>>>> develop
  LAST_NAME        varchar(50) NOT NULL, 
  FIRST_NAME       varchar(50) NOT NULL, 
  MIDDLE_NAME      varchar(50), 
  DATE_OF_BIRTH    varchar(50), 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
<<<<<<< HEAD
-- <<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> develop
  CREATED_BY       varchar(75) NOT NULL, 
  CREATED_DATE     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE      timestamp) ENGINE=InnoDB;
-- CREATE TABLE PERSON_ADDRESSES (
--   ID              varchar(75) NOT NULL, 
--   ADDRESS_TYPE_ID varchar(75) NOT NULL, 
--   PERSON_ID       varchar(75), 
--   ADDRESS_ID      varchar(75), 
--   CREATED_BY      varchar(75) NOT NULL, 
--   DATE_CREATED    timestamp NOT NULL, 
--   LAST_UPDATED_BY varchar(75), 
--   LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
-- CREATE TABLE ROLES (
--   ID                varchar(75) NOT NULL, 
-- -- =======
--   CREATED_BY       varchar(75) NOT NULL, 
--   CREATED_DATE     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
--   LAST_UPDATED_BY  varchar(75), 
--   LAST_UPDATE      timestamp) ENGINE=InnoDB;
CREATE TABLE PERSON_ADDRESSES (
<<<<<<< HEAD
  ID              varchar(75) NOT NULL,
  ADDRESS_TYPE_ID varchar(75) NOT NULL,
  PERSON_ID       varchar(75) NOT NULL,
  ADDRESS_ID      varchar(75) NOT NULL,
  PRIMARY         varchar(1) NOT NULL,
  VALID_FROM      date,
  VALID_TO        date,
  CREATED_BY      varchar(75) NOT NULL,
  DATE_CREATED    timestamp NOT NULL,
  LAST_UPDATED_BY varchar(75),
=======
  ID              varchar(75) NOT NULL, 
  ADDRESS_TYPE_ID varchar(75) NOT NULL, 
  PERSON_ID       varchar(75) NOT NULL, 
  ADDRESS_ID      varchar(75) NOT NULL, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE ROLES (
<<<<<<< HEAD
  ID                varchar(75) NOT NULL,
  ROLE_NAME         varchar(30) NOT NULL,
  DESCRIPTION       varchar(255),
  ACCESS_LEVEL_CODE varchar(8) NOT NULL,
  ACTIVE_FLAG       varchar(1) DEFAULT 'Y',
  CREATED_BY        varchar(75) NOT NULL,
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  LAST_UPDATED_BY   varchar(75),
  LAST_UPDATE       timestamp) ENGINE=InnoDB;

CREATE TABLE ROLE_MODULES (
  ROLE_ID             varchar(75) NOT NULL,
  MODULE_NAME         varchar(255) DEFAULT '' NOT NULL,
  INSERT_ALLOWED_FLAG varchar(1) NOT NULL,
  UPDATE_ALLOWED_FLAG varchar(1) NOT NULL,
  DELETE_ALLOWED_FLAG varchar(1) NOT NULL,
  QUERY_ONLY          varchar(1) NOT NULL,
  CREATED_BY          varchar(75) NOT NULL,
  DATE_CREATED        timestamp NOT NULL,
  LAST_UPDATED_BY     varchar(75),
=======
  ID                varchar(75) NOT NULL, 
<<<<<<< HEAD
-- >>>>>>> develop
=======
=======
  CREATED_BY       varchar(50) NOT NULL, 
  CREATED_DATE     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(50), 
  LAST_UPDATE      timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_ADDRESSES (
  ID              varchar(30) NOT NULL, 
  ADDRESS_TYPE_ID varchar(30) NOT NULL, 
  PERSON_ID       varchar(30), 
  ADDRESS_ID      varchar(30), 
  CREATED_BY      varchar(30) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(30), 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE ROLES (
  ID                varchar(30) NOT NULL, 
>>>>>>> master
>>>>>>> develop
  ROLE_NAME         varchar(30) NOT NULL, 
  DESCRIPTION       varchar(255), 
  ACCESS_LEVEL_CODE varchar(8) NOT NULL, 
  ACTIVE_FLAG       varchar(1) DEFAULT 'Y', 
<<<<<<< HEAD
-- <<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> develop
  CREATED_BY        varchar(75) NOT NULL, 
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY   varchar(75), 
  LAST_UPDATE       timestampL) ENGINE=InnoDB;
-- CREATE TABLE ROLE_MODULES (
--   ROLE_ID             varchar(30) NOT NULL, 
-- -- =======
--   CREATED_BY        varchar(75) NOT NULL, 
--   DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
--   LAST_UPDATED_BY   varchar(75), 
--   LAST_UPDATE       timestamp DEFAULT '0000-00-00 00:00:00' NULL) ENGINE=InnoDB;
CREATE TABLE ROLE_MODULES (
  ROLE_ID             varchar(75) NOT NULL, 
<<<<<<< HEAD
-- >>>>>>> develop
=======
=======
  CREATED_BY        varchar(30) NOT NULL, 
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY   varchar(30), 
  LAST_UPDATE       timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL) ENGINE=InnoDB;
CREATE TABLE ROLE_MODULES (
  ROLE_ID             varchar(30) NOT NULL, 
>>>>>>> master
>>>>>>> develop
  MODULE_NAME         varchar(255) DEFAULT '' NOT NULL, 
  INSERT_ALLOWED_FLAG varchar(1) NOT NULL, 
  UPDATE_ALLOWED_FLAG varchar(1) NOT NULL, 
  DELETE_ALLOWED_FLAG varchar(1) NOT NULL, 
  QUERY_ONLY          varchar(1) NOT NULL, 
<<<<<<< HEAD
-- <<<<<<< HEAD
  CREATED_BY          varchar(75) NOT NULL, 
=======
<<<<<<< HEAD
  CREATED_BY          varchar(75) NOT NULL, 
  DATE_CREATED        timestamp NOT NULL, 
  LAST_UPDATED_BY     varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
CREATE TABLE ROLE_MODULE_DETAILS (
  ROLE_ID         varchar(75) NOT NULL, 
=======
  CREATED_BY          varchar(30) NOT NULL, 
>>>>>>> develop
  DATE_CREATED        timestamp NOT NULL, 
  LAST_UPDATED_BY     varchar(30), 
  LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
C-- REATE TABLE ROLE_MODULE_DETAILS (
--   ROLE_ID         varchar(75) NOT NULL, 
-- -- =======
--   CREATED_BY          varchar(75) NOT NULL, 
--   DATE_CREATED        timestamp NOT NULL, 
--   LAST_UPDATED_BY     varchar(75), 
--   LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
CREATE TABLE ROLE_MODULE_DETAILS (
<<<<<<< HEAD
<<<<<<< Updated upstream
  ROLE_ID         varchar(75) NOT NULL,
  MODULE_NAME     varchar(255) NOT NULL,
  AREA_NAME       varchar(30) NOT NULL,
  ITEM_NAME       varchar(30) NOT NULL,
  ENABLED_FLAG    varchar(1) NOT NULL,
  SECURE_FLAG     varchar(1),
  QUERY_ONLY      varchar(1) NOT NULL,
  UPDATE_FLAG     varchar(1) NOT NULL,
  CREATED_BY      varchar(75) NOT NULL,
  DATE_CREATED    timestamp NOT NULL,
  LAST_UPDATED_BY varchar(75),
=======
=======
>>>>>>> Stashed changes
  ROLE_ID         varchar(75) NOT NULL, 
-- >>>>>>> develop
=======
  ROLE_ID         varchar(30) NOT NULL, 
>>>>>>> master
>>>>>>> develop
  MODULE_NAME     varchar(255) NOT NULL, 
  AREA_NAME       varchar(30) NOT NULL, 
  ITEM_NAME       varchar(30) NOT NULL, 
  ENABLED_FLAG    varchar(1) NOT NULL, 
  SECURE_FLAG     varchar(1), 
  QUERY_ONLY      varchar(1) NOT NULL, 
  UPDATE_FLAG     varchar(1) NOT NULL, 
<<<<<<< HEAD
-- <<<<<<< HEAD
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE ROLE_USERS (
  USER_ID     varchar(75) NOT NULL,
  ROLE_ID     varchar(75) NOT NULL,
  ACTIVE_FLAG varchar(1) DEFAULT 'Y') ENGINE=InnoDB;
CREATE TABLE USERS (
<<<<<<< HEAD
  ID              varchar(75) NOT NULL,
  USERNAME        varchar(75) NOT NULL,
  PERSON_ID       varchar(75) NOT NULL,
  PASSWORD        varchar(30) NOT NULL,
  PASSWORD_DATE   date NOT NULL,
  ACTIVE_FLAG     char(1) DEFAULT 'Y' NOT NULL,
  CREATED_BY      varchar(75) NOT NULL,
  DATE_CREATED    timestamp NOT NULL,
  LAST_UPDATED_BY varchar(75),
=======
  ID              varchar(75) NOT NULL, 
  USERNAME        varchar(75) NOT NULL, 
  PERSON_ID       varchar(75) NOT NULL, 
  PASSWORD        varchar(75) NOT NULL, 
  PASSWORD_DATE   date NOT NULL, 
  ACTIVE_FLAG     char(1) DEFAULT 'Y' NOT NULL, 
=======
<<<<<<< HEAD
>>>>>>> develop
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE     timestamp) ENGINE=InnoDB;
-- CREATE TABLE USER_CONFIG_OPTIONS (
--   USER_ID              varchar(75) NOT NULL, 
--   RECORD_BY            varchar(75) NOT NULL, 
--   RECORD_DATE          date NOT NULL, 
--   EXECUTION_PATH       varchar(75), 
--   SOURCE_PATH          varchar(75), 
--   BUTTON_X_POS         int(11), 
--   BUTTON_Y_POS         int(11), 
--   BUTTONBAR_DIR        varchar(30), 
--   MODIFIED_BY          varchar(75), 
--   MODIFICATION_DATE    date, 
--   LAST_ACCESS_MOD_BY   varchar(75), 
--   LAST_ACCESS_MOD_DATE date, 
--   BUTTON_BAR_SIZE_IND  varchar(1)) ENGINE=InnoDB;
-- CREATE TABLE USER_CONFIG_OPTION_DETAILS (
--   USER_ID      varchar(30) NOT NULL, 
-- =======
--   CREATED_BY      varchar(75) NOT NULL, 
--   DATE_CREATED    timestamp NOT NULL, 
--   LAST_UPDATED_BY varchar(75), 
--   LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE ROLE_USERS (
  USER_ID     varchar(75) NOT NULL, 
  ROLE_ID     varchar(75) NOT NULL, 
  ACTIVE_FLAG varchar(1) DEFAULT 'Y') ENGINE=InnoDB;
CREATE TABLE USERS (
  ID              varchar(75) NOT NULL, 
  USERNAME        varchar(75) NOT NULL, 
  PERSON_ID       varchar(75) NOT NULL, 
  PASSWORD        varchar(75) NOT NULL, 
  PASSWORD_DATE   date NOT NULL, 
  ACTIVE_FLAG     char(1) DEFAULT 'Y' NOT NULL, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
<<<<<<< HEAD
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
-- CREATE TABLE USER_CONFIG_OPTIONS (
--   USER_ID             varchar(75) NOT NULL, 
--   RECORD_BY           varchar(30) NOT NULL, 
--   RECORD_DATE         date NOT NULL, 
--   EXECUTION_PATH      varchar(30), 
--   SOURCE_PATH         varchar(30), 
--   BUTTON_X_POS        int(11), 
--   BUTTON_Y_POS        int(11), 
--   BUTTONBAR_DIR       varchar(30), 
--   CREATED_BY          varchar(75), 
--   DATE_CREATED        timestamp NULL, 
--   LAST_UPDATED_BY     varchar(75), 
--   LAST_UPDATE         timestamp NULL, 
--   BUTTON_BAR_SIZE_IND varchar(1)) ENGINE=InnoDB;
-- CREATE TABLE USER_CONFIG_OPTION_DETAILS (
--   USER_ID      varchar(75) NOT NULL, 
-- >>>>>>> develop
--   APP_TYPE     varchar(30) NOT NULL, 
--   APP_NAME     varchar(30) NOT NULL, 
--   APP_FILESPEC varchar(60) NOT NULL) ENGINE=InnoDB;
CREATE TABLE USER_MODULES (
<<<<<<< HEAD
  USER_ID             varchar(75) NOT NULL,
  MODULE_NAME         varchar(255) DEFAULT '' NOT NULL,
  INSERT_ALLOWED_FLAG varchar(1) NOT NULL,
  UPDATE_ALLOWED_FLAG varchar(1) NOT NULL,
  DELETE_ALLOWED_FLAG varchar(1) NOT NULL,
  QUERY_ONLY          varchar(1),
  RETAIN_FLAG         char(1) DEFAULT 'N' NOT NULL,
  CREATED_BY          varchar(75) NOT NULL,
  DATE_CREATED        timestamp NOT NULL,
  LAST_UPDATED_BY     varchar(75),
=======
-- <<<<<<< HEAD
--   USER_ID             varchar(30) NOT NULL, 
-- -- =======
  USER_ID             varchar(75) NOT NULL, 
-- >>>>>>> develop
=======
  LAST_UPDATE     timestamp DEFAULT CURRENT_TIMESTAMP NULL) ENGINE=InnoDB;
CREATE TABLE USER_CONFIG_OPTIONS (
  USER_ID             varchar(75) NOT NULL, 
  RECORD_BY           varchar(30) NOT NULL, 
  RECORD_DATE         date NOT NULL, 
  EXECUTION_PATH      varchar(30), 
  SOURCE_PATH         varchar(30), 
  BUTTON_X_POS        int(11), 
  BUTTON_Y_POS        int(11), 
  BUTTONBAR_DIR       varchar(30), 
  CREATED_BY          varchar(75), 
  DATE_CREATED        timestamp NULL, 
  LAST_UPDATED_BY     varchar(75), 
  LAST_UPDATE         timestamp NULL, 
  BUTTON_BAR_SIZE_IND varchar(1)) ENGINE=InnoDB;
CREATE TABLE USER_CONFIG_OPTION_DETAILS (
  USER_ID      varchar(75) NOT NULL, 
=======
  CREATED_BY      varchar(30) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(30), 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE ROLE_USERS (
  USER_ID     varchar(30) NOT NULL, 
  ROLE_ID     varchar(30) NOT NULL, 
  ACTIVE_FLAG varchar(1) DEFAULT 'Y') ENGINE=InnoDB;
CREATE TABLE USERS (
  ID              varchar(30) NOT NULL, 
  USERNAME        varchar(30) NOT NULL, 
  PERSON_ID       varchar(30) NOT NULL, 
  PASSWORD        varchar(30) NOT NULL, 
  PASSWORD_DATE   date NOT NULL, 
  ACTIVE_FLAG     char(1) DEFAULT 'Y' NOT NULL, 
  CREATED_BY      varchar(30) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(30), 
  LAST_UPDATE     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL) ENGINE=InnoDB;
CREATE TABLE USER_CONFIG_OPTIONS (
  USER_ID              varchar(30) NOT NULL, 
  RECORD_BY            varchar(30) NOT NULL, 
  RECORD_DATE          date NOT NULL, 
  EXECUTION_PATH       varchar(30), 
  SOURCE_PATH          varchar(30), 
  BUTTON_X_POS         int(11), 
  BUTTON_Y_POS         int(11), 
  BUTTONBAR_DIR        varchar(30), 
  MODIFIED_BY          varchar(30), 
  MODIFICATION_DATE    date, 
  LAST_ACCESS_MOD_BY   varchar(30), 
  LAST_ACCESS_MOD_DATE date, 
  BUTTON_BAR_SIZE_IND  varchar(1)) ENGINE=InnoDB;
CREATE TABLE USER_CONFIG_OPTION_DETAILS (
  USER_ID      varchar(30) NOT NULL, 
>>>>>>> master
  APP_TYPE     varchar(30) NOT NULL, 
  APP_NAME     varchar(30) NOT NULL, 
  APP_FILESPEC varchar(60) NOT NULL) ENGINE=InnoDB;
CREATE TABLE USER_MODULES (
<<<<<<< HEAD
  USER_ID             varchar(75) NOT NULL, 
=======
  USER_ID             varchar(30) NOT NULL, 
>>>>>>> master
>>>>>>> develop
  MODULE_NAME         varchar(255) DEFAULT '' NOT NULL, 
  INSERT_ALLOWED_FLAG varchar(1) NOT NULL, 
  UPDATE_ALLOWED_FLAG varchar(1) NOT NULL, 
  DELETE_ALLOWED_FLAG varchar(1) NOT NULL, 
  QUERY_ONLY          varchar(1), 
  RETAIN_FLAG         char(1) DEFAULT 'N' NOT NULL, 
<<<<<<< HEAD
-- <<<<<<< HEAD
  CREATED_BY          varchar(75) NOT NULL, 
=======
<<<<<<< HEAD
  CREATED_BY          varchar(75) NOT NULL, 
  DATE_CREATED        timestamp NOT NULL, 
  LAST_UPDATED_BY     varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
CREATE TABLE USER_MODULE_DETAILS (
  USER_ID         varchar(75) NOT NULL, 
=======
  CREATED_BY          varchar(30) NOT NULL, 
>>>>>>> develop
  DATE_CREATED        timestamp NOT NULL, 
  LAST_UPDATED_BY     varchar(30), 
  LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
-- CREATE TABLE USER_MODULE_DETAILS (
--   USER_ID         varchar(75) NOT NULL, 
-- -- =======
--   CREATED_BY          varchar(75) NOT NULL, 
--   DATE_CREATED        timestamp NOT NULL, 
--   LAST_UPDATED_BY     varchar(75), 
--   LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
CREATE TABLE USER_MODULE_DETAILS (
<<<<<<< HEAD
<<<<<<< Updated upstream
  USER_ID         varchar(75) NOT NULL,
  MODULE_NAME     varchar(255) NOT NULL,
  AREA_NAME       varchar(30) NOT NULL,
  ITEM_NAME       varchar(30) NOT NULL,
  ENABLED_FLAG    varchar(1) NOT NULL,
  SECURE_FLAG     varchar(1),
  QUERY_ONLY_FLAG varchar(1) NOT NULL,
  UPDATE_FLAG     varchar(1) NOT NULL,
  CREATED_BY      varchar(75) NOT NULL,
  DATE_CREATED    timestamp NOT NULL,
  LAST_UPDATED_BY varchar(75),
=======
=======
>>>>>>> Stashed changes
  USER_ID         varchar(75) NOT NULL, 
-- >>>>>>> develop
=======
  USER_ID         varchar(30) NOT NULL, 
>>>>>>> master
>>>>>>> develop
  MODULE_NAME     varchar(255) NOT NULL, 
  AREA_NAME       varchar(30) NOT NULL, 
  ITEM_NAME       varchar(30) NOT NULL, 
  ENABLED_FLAG    varchar(1) NOT NULL, 
  SECURE_FLAG     varchar(1), 
  QUERY_ONLY_FLAG varchar(1) NOT NULL, 
  UPDATE_FLAG     varchar(1) NOT NULL, 
<<<<<<< HEAD
-- <<<<<<< HEAD
--   CREATED_BY      varchar(30) NOT NULL, 
--   DATE_CREATED    timestamp NOT NULL, 
--   LAST_UPDATED_BY varchar(30), 
-- =======
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
-- >>>>>>> develop
<<<<<<< Updated upstream
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
=======
=======
<<<<<<< HEAD
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
=======
  CREATED_BY      varchar(30) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(30), 
>>>>>>> master
>>>>>>> develop
>>>>>>> Stashed changes
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE USER_OPTION_APPLICATION_TYPES (
  APP_TYPE         varchar(30) NOT NULL,
  USER_UPDATE_FLAG varchar(1) NOT NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_PHONES (
<<<<<<< HEAD
<<<<<<< Updated upstream
  ID              varchar(75) NOT NULL,
  PERSON_ID       varchar(75) NOT NULL,
  PHONE_NUMBER    varchar(20) NOT NULL,
  ACTIVE_IND      varchar(1) DEFAULT 'Y' NOT NULL,
  CREATED_BY      varchar(75) NOT NULL,
  DATE_CREATED    timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  LAST_UPDATED_BY varchar(75) comment 'D_B',
=======
=======
>>>>>>> Stashed changes
-- <<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> develop
  ID              varchar(75) NOT NULL, 
  PERSON_ID       varchar(75) NOT NULL, 
  PHONE_NUMBER    varchar(20) NOT NULL, 
  ACTIVE_IND      varchar(1) DEFAULT 'Y' NOT NULL, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY varchar(75) comment 'D_B', 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_SOCIAL_MEDIA (
  ID                   varchar(75) NOT NULL, 
  PERSON_ID            varchar(75) NOT NULL, 
  SOCIAL_MEDIA_TYPE_ID varchar(75) NOT NULL, 
  SOCIAL_MEDIA_VALUE   varchar(255) NOT NULL, 
  ACTIVE_IND           varchar(1) NOT NULL, 
  CREATED_BY           varchar(75) NOT NULL, 
  DATE_CREATED         timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY      varchar(75), 
  LAST_UPDATE          timestamp NULL) ENGINE=InnoDB;
CREATE TABLE SOCIAL_MEDIA_TYPES (
  ID         varchar(75) NOT NULL, 
  MEDIA_TYPE varchar(255) NOT NULL) ENGINE=InnoDB;
CREATE TABLE ORGANIZATION_ADDRESSES (
  ORGANIZATION_ID varchar(75) NOT NULL, 
  ADDRESS_ID      varchar(75) NOT NULL, 
  ADDRESS_TYPE_ID varchar(75) NOT NULL, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE CALENDAR_EVENTS (
<<<<<<< HEAD
  ID              varchar(75) NOT NULL, 
  CALENDAR_ID     varchar(75) NOT NULL, 
-- =======
  ID              varchar(75) NOT NULL, 
  PERSON_ID       varchar(75) NOT NULL, 
=======
  ID              varchar(30) NOT NULL, 
  CALENDAR_ID     varchar(75) NOT NULL, 
=======
  ID              varchar(30) NOT NULL, 
  PERSON_ID       varchar(30) NOT NULL, 
>>>>>>> develop
  PHONE_NUMBER    varchar(20) NOT NULL, 
  ACTIVE_IND      varchar(1) DEFAULT 'Y' NOT NULL, 
  CREATED_BY      varchar(50) NOT NULL, 
  DATE_CREATED    timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
<<<<<<< Updated upstream
  LAST_UPDATED_BY varchar(75) comment 'D_B', 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_SOCIAL_MEDIA (
  ID                   varchar(75) NOT NULL,
  PERSON_ID            varchar(75) NOT NULL,
  SOCIAL_MEDIA_TYPE_ID varchar(75) NOT NULL,
  SOCIAL_MEDIA_VALUE   varchar(255) NOT NULL,
  ACTIVE_IND           varchar(1) NOT NULL,
  CREATED_BY           varchar(75) NOT NULL,
  DATE_CREATED         timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  LAST_UPDATED_BY      varchar(75),
  LAST_UPDATE          timestamp NULL) ENGINE=InnoDB;
CREATE TABLE SOCIAL_MEDIA_TYPES (
  ID         varchar(75) NOT NULL,
  MEDIA_TYPE varchar(255) NOT NULL) ENGINE=InnoDB;
CREATE TABLE ORGANIZATION_ADDRESSES (
<<<<<<< HEAD
  ORGANIZATION_ID varchar(75) NOT NULL,
  ADDRESS_ID      varchar(75) NOT NULL,
  ADDRESS_TYPE_ID varchar(75) NOT NULL,
  PRIMARY         varchar(1) NOT NULL,
  CREATED_BY      varchar(75) NOT NULL,
  DATE_CREATED    timestamp NOT NULL,
  LAST_UPDATED_BY varchar(75),
=======
  ORGANIZATION_ID varchar(75) NOT NULL, 
  ADDRESS_ID      varchar(75) NOT NULL, 
  ADDRESS_TYPE_ID varchar(75) NOT NULL, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE CALENDAR_EVENTS (
<<<<<<< HEAD
  ID              varchar(75) NOT NULL,
  CALENDAR_ID     varchar(75) NOT NULL,
  EVENT_SERIES_ID varchar(75),
  DESCRIPTION     varchar(80) NOT NULL,
  NOTES           longtext,
  EVENT_DATE      date NOT NULL,
  DAY_MASK        smallint(1) DEFAULT 0 NOT NULL,
  ALL_DAY_EVENT   char(1) DEFAULT 'N' NOT NULL,
  START_TIME      time,
  END_TIME        time,
  CREATED_BY      varchar(75) NOT NULL,
  DATE_CREATED    timestamp NOT NULL,
  LAST_UPDATED_BY varchar(75),
=======
=======
  LAST_UPDATED_BY varchar(50) comment 'D_B', 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_SOCIAL_MEDIA (
  ID                   varchar(30) NOT NULL, 
  PERSON_ID            varchar(30) NOT NULL, 
  SOCIAL_MEDIA_TYPE_ID varchar(30) NOT NULL, 
  SOCIAL_MEDIA_VALUE   varchar(255) NOT NULL, 
  ACTIVE_IND           varchar(1) NOT NULL, 
  CREATED_BY           varchar(50) NOT NULL, 
  DATE_CREATED         timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY      varchar(50), 
  LAST_UPDATE          timestamp NULL) ENGINE=InnoDB;
CREATE TABLE SOCIAL_MEDIA_TYPES (
  ID         varchar(30) NOT NULL, 
  MEDIA_TYPE varchar(255) NOT NULL) ENGINE=InnoDB;
CREATE TABLE ORGANIZATION_ADDRESSES (
  ORGANIZATION_ID varchar(30) NOT NULL, 
  ADDRESS_ID      varchar(30) NOT NULL, 
  ADDRESS_TYPE_ID varchar(30) NOT NULL, 
  CREATED_BY      varchar(30) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(30), 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE CALENDAR_EVENTS (
<<<<<<< HEAD
>>>>>>> Stashed changes
  ID              varchar(75) NOT NULL, 
  CALENDAR_ID     varchar(75) NOT NULL, 
-- >>>>>>> develop
  EVENT_SERIES_ID varchar(75), 
  DESCRIPTION     varchar(80) NOT NULL, 
  NOTES           longtext, 
  EVENT_DATE      date NOT NULL, 
-- <<<<<<< HEAD
  DAY_MASK        smallint(1) DEFAULT 0 NOT NULL, 
=======
  ID              varchar(30) NOT NULL, 
  CALENDAR_ID     varchar(30) NOT NULL, 
>>>>>>> master
  EVENT_SERIES_ID varchar(30), 
  DESCRIPTION     varchar(80) NOT NULL, 
  NOTES           longtext, 
  EVENT_DATE      date NOT NULL, 
<<<<<<< HEAD
  DAY_MASK        varchar(1) NOT NULL, 
>>>>>>> develop
  ALL_DAY_EVENT   char(1) DEFAULT 'N' NOT NULL, 
  START_TIME      time, 
  END_TIME        time, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE CALENDAR_MASTER (
<<<<<<< HEAD
  ID                        varchar(75) NOT NULL,
  INHERITS_FROM_CALENDAR_ID varchar(75) NOT NULL,
  DESCRIPTION               varchar(60),
  WEEK_MASK                 varchar(7) DEFAULT 'NYYYYYN' NOT NULL,
  DEFAULT_FLAG              char(1) DEFAULT 'N' NOT NULL,
  START_DATE                date NOT NULL,
  END_DATE                  date,
  CREATED_BY                varchar(75) NOT NULL,
  DATE_CREATED              timestamp NOT NULL,
  LAST_UPDATED_BY           varchar(75),
=======
  ID                        varchar(75) NOT NULL, 
  INHERITS_FROM_CALENDAR_ID varchar(75) NOT NULL, 
<<<<<<< HEAD
-- =======
  DAY_MASK        varchar(1) NOT NULL, 
=======
=======
  DAY_MASK        smallint(1) DEFAULT 0 NOT NULL, 
>>>>>>> develop
  ALL_DAY_EVENT   char(1) DEFAULT 'N' NOT NULL, 
  START_TIME      time, 
  END_TIME        time, 
  CREATED_BY      varchar(50) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(30), 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE CALENDAR_MASTER (
<<<<<<< HEAD
  ID                        varchar(75) NOT NULL, 
  INHERITS_FROM_CALENDAR_ID varchar(75) NOT NULL, 
-- >>>>>>> develop
  CALENDAR_NAME				varchar(50) NOT NULL,
=======
  ID                        varchar(30) NOT NULL, 
  INHERITS_FROM_CALENDAR_ID varchar(30) NOT NULL, 
>>>>>>> master
>>>>>>> develop
  DESCRIPTION               varchar(60), 
  WEEK_MASK                 varchar(7) DEFAULT 'NYYYYYN' NOT NULL, 
  DEFAULT_FLAG              char(1) DEFAULT 'N' NOT NULL, 
  START_DATE                date NOT NULL, 
  END_DATE                  date, 
<<<<<<< HEAD
-- <<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> develop
  CREATED_BY                varchar(75) NOT NULL, 
  DATE_CREATED              timestamp NOT NULL, 
  LAST_UPDATED_BY           varchar(75), 
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
  LAST_UPDATE               timestamp NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_CALENDARS (
<<<<<<< HEAD
  ID                      varchar(75) NOT NULL,
  CALENDAR_NAME           varchar(50),
  CALENDAR_OWNER_ID       varchar(75) NOT NULL,
  CALENDAR_SHARED_WITH_ID varchar(75) NOT NULL,
  CALENDAR_ID             varchar(75) NOT NULL,
  ACTIVE_FLAG             char(1) DEFAULT 'Y',
  VIEW_ONLY               char(1),
  CREATED_BY              varchar(75) NOT NULL,
  DATE_CREATED            timestamp NOT NULL,
  LAST_UPDATED_BY         varchar(75),
  LAST_UPDATE             timestamp NULL) ENGINE=InnoDB;

CREATE TABLE PERSON_CALENDAR_EVENTS (
  ID                  varchar(75) NOT NULL,
  PERSON_CALENDARS_ID varchar(75) NOT NULL,
  EVENT_SERIES_ID     varchar(75),
  EVENT_DATE          date NOT NULL,
  DAY_MASK            varchar(1) NOT NULL,
  ALL_DAY_EVENT       char(1) DEFAULT 'N' NOT NULL,
  START_TIME          time,
  END_TIME            time,
  DESCRIPTION         varchar(80) NOT NULL,
  CONFIRMED_DATE      date,
  NOTES               longtext,
  CREATED_BY          varchar(75) NOT NULL,
  DATE_CREATED        timestamp NOT NULL,
  LAST_UDPATED_BY     varchar(75),
=======
  ID                      varchar(75) NOT NULL, 
  CALENDAR_NAME           varchar(50), 
  CALENDAR_OWNER_ID       varchar(75), 
  CALENDAR_SHARED_WITH_ID varchar(75) NOT NULL, 
  CALENDAR_ID             varchar(75) NOT NULL, 
  ACTIVE_FLAG             char(1) DEFAULT 'Y', 
  VIEW_ONLY               char(1), 
<<<<<<< HEAD
--   CREATED_BY              varchar(30) NOT NULL, 
--   DATE_CREATED            timestamp NOT NULL, 
--   LAST_UPDATED_BY         varchar(30), 
-- =======
  CREATED_BY                varchar(75) NOT NULL, 
  DATE_CREATED              timestamp NOT NULL, 
  LAST_UPDATED_BY           varchar(75), 
  LAST_UPDATE               timestamp NULL) ENGINE=InnoDB;
-- CREATE TABLE PERSON_CALENDARS (
--   ID                      varchar(75) NOT NULL, 
--   CALENDAR_NAME           varchar(50), 
--   CALENDAR_OWNER_ID       varchar(75) NOT NULL, 
--   CALENDAR_SHARED_WITH_ID varchar(75) NOT NULL, 
--   CALENDAR_ID             varchar(75) NOT NULL, 
--   ACTIVE_FLAG             char(1) DEFAULT 'Y', 
--   VIEW_ONLY               char(1), 
--   CREATED_BY              varchar(75) NOT NULL, 
--   DATE_CREATED            timestamp NOT NULL, 
--   LAST_UPDATED_BY         varchar(75), 
-- >>>>>>> develop
--   LAST_UPDATE             timestamp NULL) ENGINE=InnoDB;
-- CREATE TABLE CALENDAR_DETAILS2 (
--   ID          varchar(30) NOT NULL, 
--   CALENDAR_ID varchar(30) NOT NULL, 
--   DESCRIPTION varchar(80) NOT NULL, 
--   `DATE`      date NOT NULL, 
--   DAY_MASK    char(1) DEFAULT 'Y' NOT NULL) ENGINE=InnoDB;
-- CREATE TABLE CALENDAR_MASTER2 (
--   ID                        varchar(30) NOT NULL, 
--   DESCRIPTION               varchar(60), 
--   WEEK_MASK                 varchar(7) DEFAULT 'NYYYYYN' NOT NULL, 
--   DEFAULT_FLAG              char(1) DEFAULT 'N' NOT NULL, 
--   START_DATE                date NOT NULL, 
--   END_DATE                  date, 
--   INHERITS_FROM_CALENDAR_ID varchar(30)) ENGINE=InnoDB;
-- CREATE TABLE PERSON_CALENDARS2 (
--   ID            varchar(30) NOT NULL, 
--   CALENDAR_NAME varchar(50) NOT NULL, 
--   PERSON_ID     varchar(30) NOT NULL, 
--   CALENDAR_ID   varchar(30) NOT NULL, 
--   ACTIVE_FLAG   char(1) DEFAULT 'Y' NOT NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_CALENDAR_EVENTS (
-- <<<<<<< HEAD
--   ID                  varchar(75) NOT NULL, 
--   PERSON_CALENDARS_ID varchar(75) NOT NULL, 
--   EVENT_SERIES_ID     varchar(75), 
--   EVENT_DATE          date NOT NULL, 
--   DAY_MASK            smallint(1) DEFAULT 0 NOT NULL, 
--   ALL_DAY_EVENT       char(1) DEFAULT 'N' NOT NULL, 
--   START_TIME          time NOT NULL, 
--   END_TIME            time NOT NULL, 
--   DESCRIPTION         varchar(80) NOT NULL, 
--   NOTES               longtext, 
--   CREATED_BY          varchar(75) NOT NULL, 
--   DATE_CREATED        timestamp NOT NULL, 
--   LAST_UPDATED_BY     varchar(75), 
-- =======
=======
  CREATED_BY              varchar(75) NOT NULL, 
  DATE_CREATED            timestamp NOT NULL, 
  LAST_UPDATED_BY         varchar(75), 
=======
  CREATED_BY                varchar(30) NOT NULL, 
  DATE_CREATED              timestamp NOT NULL, 
  LAST_UPDATED_BY           varchar(30), 
  LAST_UPDATE               timestamp NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_CALENDARS (
  ID                      varchar(30) NOT NULL, 
  CALENDAR_NAME           varchar(50), 
  CALENDAR_OWNER_ID       varchar(30), 
  CALENDAR_SHARED_WITH_ID varchar(30) NOT NULL, 
  CALENDAR_ID             varchar(30) NOT NULL, 
  ACTIVE_FLAG             char(1) DEFAULT 'Y', 
  VIEW_ONLY               char(1), 
  CREATED_BY              varchar(30) NOT NULL, 
  DATE_CREATED            timestamp NOT NULL, 
  LAST_UPDATED_BY         varchar(30), 
>>>>>>> master
  LAST_UPDATE             timestamp NULL) ENGINE=InnoDB;
CREATE TABLE CALENDAR_DETAILS2 (
  ID          varchar(30) NOT NULL, 
  CALENDAR_ID varchar(30) NOT NULL, 
  DESCRIPTION varchar(80) NOT NULL, 
  `DATE`      date NOT NULL, 
  DAY_MASK    char(1) DEFAULT 'Y' NOT NULL) ENGINE=InnoDB;
CREATE TABLE CALENDAR_MASTER2 (
  ID                        varchar(30) NOT NULL, 
  DESCRIPTION               varchar(60), 
  WEEK_MASK                 varchar(7) DEFAULT 'NYYYYYN' NOT NULL, 
  DEFAULT_FLAG              char(1) DEFAULT 'N' NOT NULL, 
  START_DATE                date NOT NULL, 
  END_DATE                  date, 
  INHERITS_FROM_CALENDAR_ID varchar(30)) ENGINE=InnoDB;
CREATE TABLE PERSON_CALENDARS2 (
  ID            varchar(30) NOT NULL, 
  CALENDAR_NAME varchar(50) NOT NULL, 
  PERSON_ID     varchar(30) NOT NULL, 
  CALENDAR_ID   varchar(30) NOT NULL, 
  ACTIVE_FLAG   char(1) DEFAULT 'Y' NOT NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_CALENDAR_EVENTS (
<<<<<<< HEAD
>>>>>>> develop
  ID                  varchar(75) NOT NULL, 
  PERSON_CALENDARS_ID varchar(75) NOT NULL, 
  EVENT_SERIES_ID     varchar(75), 
  EVENT_DATE          date NOT NULL, 
  DAY_MASK            varchar(1) NOT NULL, 
  ALL_DAY_EVENT       char(1) DEFAULT 'N' NOT NULL, 
  START_TIME          time, 
  END_TIME            time, 
  DESCRIPTION         varchar(80) NOT NULL, 
  NOTES               longtext, 
  CREATED_BY          varchar(75) NOT NULL, 
  DATE_CREATED        timestamp NOT NULL, 
  LAST_UDPATED_BY     varchar(75), 
<<<<<<< HEAD
-- >>>>>>> develop
<<<<<<< Updated upstream
>>>>>>> e0a908fcb8da5aaf061b19310e6f64b374fad392
=======
=======
=======
  ID                  varchar(30) NOT NULL, 
  PERSON_CALENDARS_ID varchar(30) NOT NULL, 
  EVENT_SERIES_ID     varchar(30), 
  EVENT_DATE          date NOT NULL, 
  DAY_MASK            smallint(1) DEFAULT 0 NOT NULL, 
  ALL_DAY_EVENT       char(1) DEFAULT 'N' NOT NULL, 
  START_TIME          time NOT NULL, 
  END_TIME            time NOT NULL, 
  DESCRIPTION         varchar(80) NOT NULL, 
  NOTES               longtext, 
  CREATED_BY          varchar(30) NOT NULL, 
  DATE_CREATED        timestamp NOT NULL, 
  LAST_UPDATED_BY     varchar(30), 
>>>>>>> master
>>>>>>> develop
>>>>>>> Stashed changes
  LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
=======
create table addresses (
  id                varchar(75) not null, 
  name              varchar(50) not null, 
  line1             varchar(100) not null, 
  line2             varchar(100), 
  city              varchar(50) not null, 
  county            varchar(50), 
  state_or_province varchar(50) not null, 
  postal_code       varchar(30), 
  country           varchar(50), 
  address_notes     varchar(1000), 
  active_indicator  char(1) default 'a' not null, 
  created_by        varchar(75) not null, 
  date_created      timestamp default current_timestamp not null, 
  last_updated_by   varchar(75), 
  last_update       timestamp default current_timestamp) engine=innodb;

create table address_types (
  id               varchar(75) not null, 
  type_code        varchar(50) not null, 
  active_indicator char(1) default 'a' not null, 
  created_by        varchar(75) not null, 
  date_created      timestamp default current_timestamp not null, 
  last_updated_by   varchar(75), 
  last_update       timestamp default current_timestamp) engine=innodb;

create table application_components (
  application_name varchar(30) not null, 
  subject_area     varchar(30) not null, 
  description      varchar(60) not null) engine=innodb;

create table application_master (
  application_name varchar(30) not null, 
  description      varchar(60)) engine=innodb;

create table global_options (
  application_name varchar(30) not null, 
  module_type_code varchar(8) not null, 
  file_name        varchar(75), 
  graphic_type     varchar(8), 
  logo_title       varchar(8)) engine=innodb;

create table message_master (
  message_id       varchar(75) not null, 
  message_code     varchar(8) not null, 
  message_source   varchar(8) not null, 
  application_name varchar(30) not null, 
  message_text     varchar(80) not null, 
  message_help     varchar(240) not null, 
  message_type_ind varchar(1) not null, 
  audit_flag       varchar(1) not null, 
  response_routing varchar(75), 
  created_by       varchar(75) not null, 
  date_created     timestamp default current_timestamp not null, 
  last_update_by   varchar(75), 
  last_update      timestamp default current_timestamp, 
  primary key (message_id)) engine=innodb;

create table module_master (
  module_name            varchar(255) default '' not null, 
  module_type_code       varchar(10) not null, 
  description            varchar(255), 
  application_name       varchar(255), 
  module_source_path     varchar(80), 
  module_executable_path varchar(80), 
  created_by             varchar(75) not null, 
  date_created           timestamp not null, 
  last_updated_by        varchar(75), 
  last_update            timestamp default current_timestamp) engine=innodb;

create table module_network_master (
  parent_module      varchar(255) not null, 
  child_module       varchar(255) not null, 
  calling_method_ind varchar(1) not null) engine=innodb;

create table organizations (
  id                     varchar(75) not null, 
  name                   varchar(200) not null, 
  organization_type_id   varchar(75) not null, 
  active_flag            char(1) default 'a' not null, 
  created_by             varchar(75) not null, 
  date_created           timestamp default current_timestamp not null, 
  last_updated_by        varchar(75), 
  last_update            timestamp default current_timestamp, 
  parent_organization_id varchar(75) not null) engine=innodb;

create table organization_persons (
  id               varchar(75) not null, 
  organization_id  varchar(75) not null, 
  person_id        varchar(75) not null, 
  active_indicator char(1) default 'a' not null, 
  org_position     varchar(50),
  created_by       varchar(75) not null, 
  date_created     timestamp default current_timestamp not null, 
  last_updated_by  varchar(75), 
  last_update      timestamp default current_timestamp) engine=innodb;

create table organization_types (
  id               varchar(75) not null, 
  type_code        varchar(50) not null, 
  active_indicator char(1) default 'a' not null, 
  created_by       varchar(75) not null, 
  date_created     timestamp default current_timestamp not null, 
  last_updated_by  varchar(75), 
  last_update      timestamp default current_timestamp) engine=innodb;

create table persons (
  id               varchar(75) not null, 
  last_name        varchar(50) not null, 
  first_name       varchar(50) not null, 
  middle_name      varchar(50), 
  date_of_birth    date,
  active_indicator char(1) default 'a' not null, 
  created_by       varchar(75) not null, 
  created_date     timestamp default current_timestamp not null, 
  last_updated_by  varchar(75), 
  last_update      timestamp default current_timestamp) engine=innodb;

create table person_addresses (
  id              varchar(75) not null, 
  address_type_id varchar(75) not null, 
  person_id       varchar(75) not null, 
  address_id      varchar(75) not null, 
  primary_flag    varchar(1) not null,
  valid_from      date,
  valid_to        date,
  created_by      varchar(75) not null, 
  date_created    timestamp default current_timestamp not null, 
  last_updated_by varchar(75), 
  last_update     timestamp  default current_timestamp) engine=innodb;

create table roles (
  id                varchar(75) not null, 
  role_name         varchar(30) not null, 
  description       varchar(255), 
  access_level_code varchar(8) not null, 
  active_flag       varchar(1) default 'y', 
  created_by        varchar(75) not null, 
  date_created      timestamp default current_timestamp not null, 
  last_updated_by   varchar(75), 
  last_update       timestamp default current_timestamp) engine=innodb;

create table role_modules (
  role_id             varchar(75) not null, 
  module_name         varchar(255) default '' not null, 
  insert_allowed_flag varchar(1) not null, 
  update_allowed_flag varchar(1) not null, 
  delete_allowed_flag varchar(1) not null, 
  query_only          varchar(1) not null, 
  created_by          varchar(75) not null, 
  date_created        timestamp not null, 
  last_updated_by     varchar(75), 
  last_update         timestamp default current_timestamp) engine=innodb;

create table role_module_details (
  role_id         varchar(75) not null, 
  module_name     varchar(255) not null, 
  area_name       varchar(30) not null, 
  item_name       varchar(30) not null, 
  enabled_flag    varchar(1) not null, 
  secure_flag     varchar(1), 
  query_only      varchar(1) not null, 
  update_flag     varchar(1) not null, 
  created_by      varchar(75) not null, 
  date_created    timestamp not null, 
  last_updated_by varchar(75), 
  last_update     timestamp default current_timestamp) engine=innodb;

create table role_users (
  user_id     varchar(75) not null, 
  role_id     varchar(75) not null, 
  active_flag varchar(1) default 'y') engine=innodb;

create table users (
  id              varchar(75) not null, 
  username        varchar(75) not null, 
  person_id       varchar(75) not null, 
  password        varchar(30) not null, 
  password_hint   varchar(30),
  password_date   date not null, 
  active_flag     char(1) default 'y' not null, 
  created_by      varchar(75) not null, 
  date_created    timestamp not null, 
  last_updated_by varchar(75), 
  last_update     timestamp default current_timestamp) engine=innodb;

create table user_modules (
  user_id             varchar(75) not null, 
  module_name         varchar(255) default '' not null, 
  insert_allowed_flag varchar(1) not null, 
  update_allowed_flag varchar(1) not null, 
  delete_allowed_flag varchar(1) not null, 
  query_only          varchar(1), 
  retain_flag         char(1) default 'n' not null, 
  created_by          varchar(75) not null, 
  date_created        timestamp not null, 
  last_updated_by     varchar(75), 
  last_update         timestamp default current_timestamp) engine=innodb;

create table user_module_details (
  user_id         varchar(75) not null, 
  module_name     varchar(255) not null, 
  area_name       varchar(30) not null, 
  item_name       varchar(30) not null, 
  enabled_flag    varchar(1) not null, 
  secure_flag     varchar(1), 
  query_only_flag varchar(1) not null, 
  update_flag     varchar(1) not null, 
  created_by      varchar(75) not null, 
  date_created    timestamp not null, 
  last_updated_by varchar(75), 
  last_update     timestamp default current_timestamp) engine=innodb;

create table user_option_application_types (
  app_type         varchar(30) not null, 
  user_update_flag varchar(1) not null) engine=innodb;

create table person_phones (
  id              varchar(75) not null, 
  person_id       varchar(75) not null, 
  phone_number    varchar(20) not null, 
  active_ind      varchar(1) default 'y' not null, 
  created_by      varchar(75) not null, 
  date_created    timestamp default current_timestamp not null, 
  last_updated_by varchar(75) comment 'd_b', 
  last_update     timestamp default current_timestamp) engine=innodb;

create table person_social_media (
  id                   varchar(75) not null, 
  person_id            varchar(75) not null, 
  social_media_type_id varchar(75) not null, 
  social_media_value   varchar(255) not null, 
  active_ind           varchar(1) not null, 
  created_by           varchar(75) not null, 
  date_created         timestamp default current_timestamp not null, 
  last_updated_by      varchar(75), 
  last_update          timestamp default current_timestamp) engine=innodb;

create table social_media_types (
  id         varchar(75) not null, 
  media_type varchar(255) not null) engine=innodb;

create table organization_addresses (
  organization_id varchar(75) not null, 
  address_id      varchar(75) not null, 
  address_type_id varchar(75) not null, 
  primary_flag    varchar(1) not null,
  created_by      varchar(75) not null, 
  date_created    timestamp not null, 
  last_updated_by varchar(75), 
  last_update     timestamp default current_timestamp) engine=innodb;

create table calendar_events (
  id              varchar(75) not null, 
  calendar_id     varchar(75) not null, 
  event_series_id varchar(75), 
  description     varchar(80) not null, 
  notes           longtext, 
  event_date      date not null, 
  day_mask        smallint(1) default 0 not null, 
  all_day_event   char(1) default 'n' not null, 
  start_time      time, 
  end_time        time, 
  created_by      varchar(75) not null, 
  date_created    timestamp not null, 
  last_updated_by varchar(75), 
  last_update     timestamp default current_timestamp) engine=innodb;

create table calendar_master (
  id                        varchar(75) not null, 
  inherits_from_calendar_id varchar(75), 
  description               varchar(75) not null, 
  week_mask                 varchar(7) default 'nyyyyyn' not null, 
  default_flag              char(1) default 'n' not null, 
  start_date                date not null, 
  end_date                  date, 
  created_by                varchar(75) not null, 
  date_created              timestamp not null, 
  last_updated_by           varchar(75), 
  last_update               timestamp default current_timestamp) engine=innodb;

create table person_calendars (
  id                      varchar(75) not null, 
  calendar_name           varchar(50), 
  calendar_owner_id       varchar(75) not null, 
  calendar_shared_with_id varchar(75) not null, 
  calendar_id             varchar(75) not null, 
  active_flag             char(1) default 'y', 
  view_only               char(1), 
  created_by              varchar(75) not null, 
  date_created            timestamp not null, 
  last_updated_by         varchar(75), 
  last_update             timestamp default current_timestamp) engine=innodb;

create table person_calendar_events (
  id                  varchar(75) not null, 
  person_calendars_id varchar(75) not null, 
  event_series_id     varchar(75), 
  event_date          date not null, 
  day_mask            varchar(1) not null, 
  all_day_event       char(1) default 'n' not null, 
  start_time          time, 
  end_time            time, 
  description         varchar(80) not null, 
  notes               longtext, 
  created_by          varchar(75) not null, 
  date_created        timestamp not null, 
  last_udpated_by     varchar(75), 
  last_update         timestamp default current_timestamp) engine=innodb;
>>>>>>> master
