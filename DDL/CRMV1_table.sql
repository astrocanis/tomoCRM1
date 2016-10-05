/*
<<<<<<< HEAD
28/05/201611:32:35 PM - tgray
*/
-- CREATE TABLE ADDRESSES (
/*  ID                varchar(30) NOT NULL, 
=======
08/06/201611:30:55 PM - tgray
*/
CREATE TABLE ADDRESSES (
  ID                varchar(75) NOT NULL, 
-- >>>>>>> develop
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
-- <<<<<<< HEAD
  CREATED_BY        varchar(50) NOT NULL, 
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY   varchar(50), 
  LAST_UPDATE       timestamp) ENGINE=InnoDB;
CREATE TABLE ADDRESS_TYPES (
  ID               varchar(75) NOT NULL, 
  TYPE_CODE        varchar(50) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
--   CREATED_BY       varchar(50) NOT NULL, 
--   DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
--   LAST_UPDATED_BY  varchar(50), 
--   LAST_UPDATE      timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL) ENGINE=InnoDB;
-- -- =======
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
  LAST_UPDATED_BY  varchar(75), 
  LAST_UPDATE      timestamp) ENGINE=InnoDB;
-- >>>>>>> develop
CREATE TABLE APPLICATION_COMPONENTS (
  APPLICATION_NAME varchar(30) NOT NULL, 
  SUBJECT_AREA     varchar(30) NOT NULL, 
  DESCRIPTION      varchar(60) NOT NULL) ENGINE=InnoDB;
CREATE TABLE APPLICATION_MASTER (
  APPLICATION_NAME varchar(30) NOT NULL, 
  DESCRIPTION      varchar(60)) ENGINE=InnoDB;
CREATE TABLE GLOBAL_OPTIONS (
  APPLICATION_NAME varchar(30) NOT NULL, 
  MODULE_TYPE_CODE varchar(8) NOT NULL, 
  FILE_NAME        varchar(30), 
  GRAPHIC_TYPE     varchar(8), 
  LOGO_TITLE       varchar(8)) ENGINE=InnoDB;
CREATE TABLE MESSAGE_MASTER (
-- <<<<<<< HEAD
--   MESSAGE_ID       int(11) NOT NULL AUTO_INCREMENT, 
-- =======
  MESSAGE_ID       varchar(75) NOT NULL, 
-- >>>>>>> develop
  MESSAGE_CODE     varchar(8) NOT NULL, 
  MESSAGE_SOURCE   varchar(8) NOT NULL, 
  APPLICATION_NAME varchar(30) NOT NULL, 
  MESSAGE_TEXT     varchar(80) NOT NULL, 
  MESSAGE_HELP     varchar(240) NOT NULL, 
  MESSAGE_TYPE_IND varchar(1) NOT NULL, 
  AUDIT_FLAG       varchar(1) NOT NULL, 
  RESPONSE_ROUTING varchar(30), 
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
  LAST_UPDATE      date,
  PRIMARY KEY (MESSAGE_ID)) ENGINE=InnoDB;
-- >>>>>>> develop
CREATE TABLE MODULE_MASTER (
  MODULE_NAME            varchar(255) DEFAULT '' NOT NULL, 
  MODULE_TYPE_CODE       varchar(10) NOT NULL, 
  DESCRIPTION            varchar(255), 
  APPLICATION_NAME       varchar(255), 
  MODULE_SOURCE_PATH     varchar(80), 
  MODULE_EXECUTABLE_PATH varchar(80), 
-- <<<<<<< HEAD
--   CREATED_BY             varchar(30) NOT NULL, 
--   DATE_CREATED           timestamp NOT NULL, 
--   LAST_UPDATED_BY        varchar(30), 
-- =======
  CREATED_BY             varchar(75) NOT NULL, 
  DATE_CREATED           timestamp NOT NULL, 
  LAST_UPDATED_BY        varchar(75), 
-- >>>>>>> develop
  LAST_UPDATE            timestamp NULL) ENGINE=InnoDB;
CREATE TABLE MODULE_NETWORK_MASTER (
  PARENT_MODULE      varchar(255) NOT NULL, 
  CHILD_MODULE       varchar(255) NOT NULL, 
  CALLING_METHOD_IND varchar(1) NOT NULL) ENGINE=InnoDB;
CREATE TABLE ORGANIZATIONS (
-- <<<<<<< HEAD
--   ID                     varchar(30) NOT NULL, 
--   NAME                   varchar(200) NOT NULL, 
--   ORGANIZATION_TYPE_ID   varchar(30) NOT NULL, 
-- =======
  ID                     varchar(75) NOT NULL, 
  NAME                   varchar(200) NOT NULL, 
  ORGANIZATION_TYPE_ID   varchar(75) NOT NULL, 
-- >>>>>>> develop
  ACTIVE_FLAG            char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY             varchar(75) NOT NULL, 
  DATE_CREATED           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY        varchar(75), 
-- <<<<<<< HEAD
  LAST_UPDATE            timestamp, 
  PARENT_ORGANIZATION_ID varchar(75) NOT NULL) ENGINE=InnoDB;
CREATE TABLE ORGANIZATION_PERSONS (
  ID               varchar(75) NOT NULL, 
  ORGANIZATION_ID  varchar(75) NOT NULL, 
  PERSON_ID        varchar(75) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY       varchar(75) NOT NULL, 
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(75), 
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
  ID               varchar(75) NOT NULL, 
-- >>>>>>> develop
  LAST_NAME        varchar(50) NOT NULL, 
  FIRST_NAME       varchar(50) NOT NULL, 
  MIDDLE_NAME      varchar(50), 
  DATE_OF_BIRTH    varchar(50), 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
-- <<<<<<< HEAD
  CREATED_BY       varchar(75) NOT NULL, 
  CREATED_DATE     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(75), 
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
  ID              varchar(75) NOT NULL, 
  ADDRESS_TYPE_ID varchar(75) NOT NULL, 
  PERSON_ID       varchar(75) NOT NULL, 
  ADDRESS_ID      varchar(75) NOT NULL, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE ROLES (
  ID                varchar(75) NOT NULL, 
-- >>>>>>> develop
  ROLE_NAME         varchar(30) NOT NULL, 
  DESCRIPTION       varchar(255), 
  ACCESS_LEVEL_CODE varchar(8) NOT NULL, 
  ACTIVE_FLAG       varchar(1) DEFAULT 'Y', 
-- <<<<<<< HEAD
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
-- >>>>>>> develop
  MODULE_NAME         varchar(255) DEFAULT '' NOT NULL, 
  INSERT_ALLOWED_FLAG varchar(1) NOT NULL, 
  UPDATE_ALLOWED_FLAG varchar(1) NOT NULL, 
  DELETE_ALLOWED_FLAG varchar(1) NOT NULL, 
  QUERY_ONLY          varchar(1) NOT NULL, 
-- <<<<<<< HEAD
  CREATED_BY          varchar(75) NOT NULL, 
  DATE_CREATED        timestamp NOT NULL, 
  LAST_UPDATED_BY     varchar(75), 
  LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
C-- REATE TABLE ROLE_MODULE_DETAILS (
--   ROLE_ID         varchar(75) NOT NULL, 
-- -- =======
--   CREATED_BY          varchar(75) NOT NULL, 
--   DATE_CREATED        timestamp NOT NULL, 
--   LAST_UPDATED_BY     varchar(75), 
--   LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
CREATE TABLE ROLE_MODULE_DETAILS (
  ROLE_ID         varchar(75) NOT NULL, 
-- >>>>>>> develop
  MODULE_NAME     varchar(255) NOT NULL, 
  AREA_NAME       varchar(30) NOT NULL, 
  ITEM_NAME       varchar(30) NOT NULL, 
  ENABLED_FLAG    varchar(1) NOT NULL, 
  SECURE_FLAG     varchar(1), 
  QUERY_ONLY      varchar(1) NOT NULL, 
  UPDATE_FLAG     varchar(1) NOT NULL, 
-- <<<<<<< HEAD
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
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
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
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
-- <<<<<<< HEAD
--   USER_ID             varchar(30) NOT NULL, 
-- -- =======
  USER_ID             varchar(75) NOT NULL, 
-- >>>>>>> develop
  MODULE_NAME         varchar(255) DEFAULT '' NOT NULL, 
  INSERT_ALLOWED_FLAG varchar(1) NOT NULL, 
  UPDATE_ALLOWED_FLAG varchar(1) NOT NULL, 
  DELETE_ALLOWED_FLAG varchar(1) NOT NULL, 
  QUERY_ONLY          varchar(1), 
  RETAIN_FLAG         char(1) DEFAULT 'N' NOT NULL, 
-- <<<<<<< HEAD
  CREATED_BY          varchar(75) NOT NULL, 
  DATE_CREATED        timestamp NOT NULL, 
  LAST_UPDATED_BY     varchar(75), 
  LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
-- CREATE TABLE USER_MODULE_DETAILS (
--   USER_ID         varchar(75) NOT NULL, 
-- -- =======
--   CREATED_BY          varchar(75) NOT NULL, 
--   DATE_CREATED        timestamp NOT NULL, 
--   LAST_UPDATED_BY     varchar(75), 
--   LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
CREATE TABLE USER_MODULE_DETAILS (
  USER_ID         varchar(75) NOT NULL, 
-- >>>>>>> develop
  MODULE_NAME     varchar(255) NOT NULL, 
  AREA_NAME       varchar(30) NOT NULL, 
  ITEM_NAME       varchar(30) NOT NULL, 
  ENABLED_FLAG    varchar(1) NOT NULL, 
  SECURE_FLAG     varchar(1), 
  QUERY_ONLY_FLAG varchar(1) NOT NULL, 
  UPDATE_FLAG     varchar(1) NOT NULL, 
-- <<<<<<< HEAD
--   CREATED_BY      varchar(30) NOT NULL, 
--   DATE_CREATED    timestamp NOT NULL, 
--   LAST_UPDATED_BY varchar(30), 
-- =======
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
-- >>>>>>> develop
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE USER_OPTION_APPLICATION_TYPES (
  APP_TYPE         varchar(30) NOT NULL, 
  USER_UPDATE_FLAG varchar(1) NOT NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_PHONES (
-- <<<<<<< HEAD
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
  ID              varchar(75) NOT NULL, 
  CALENDAR_ID     varchar(75) NOT NULL, 
-- =======
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
  ID              varchar(75) NOT NULL, 
  CALENDAR_ID     varchar(75) NOT NULL, 
-- >>>>>>> develop
  EVENT_SERIES_ID varchar(75), 
  DESCRIPTION     varchar(80) NOT NULL, 
  NOTES           longtext, 
  EVENT_DATE      date NOT NULL, 
-- <<<<<<< HEAD
  DAY_MASK        smallint(1) DEFAULT 0 NOT NULL, 
  ALL_DAY_EVENT   char(1) DEFAULT 'N' NOT NULL, 
  START_TIME      time, 
  END_TIME        time, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE CALENDAR_MASTER (
  ID                        varchar(75) NOT NULL, 
  INHERITS_FROM_CALENDAR_ID varchar(75) NOT NULL, 
-- =======
  DAY_MASK        varchar(1) NOT NULL, 
  ALL_DAY_EVENT   char(1) DEFAULT 'N' NOT NULL, 
  START_TIME      time, 
  END_TIME        time, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
  LAST_UPDATE     timestamp NULL) ENGINE=InnoDB;
CREATE TABLE CALENDAR_MASTER (
  ID                        varchar(75) NOT NULL, 
  INHERITS_FROM_CALENDAR_ID varchar(75) NOT NULL, 
-- >>>>>>> develop
  CALENDAR_NAME				varchar(50) NOT NULL,
  DESCRIPTION               varchar(60), 
  WEEK_MASK                 varchar(7) DEFAULT 'NYYYYYN' NOT NULL, 
  DEFAULT_FLAG              char(1) DEFAULT 'N' NOT NULL, 
  START_DATE                date NOT NULL, 
  END_DATE                  date, 
-- <<<<<<< HEAD
  CREATED_BY                varchar(75) NOT NULL, 
  DATE_CREATED              timestamp NOT NULL, 
  LAST_UPDATED_BY           varchar(75), 
  LAST_UPDATE               timestamp NULL) ENGINE=InnoDB;
CREATE TABLE PERSON_CALENDARS (
  ID                      varchar(75) NOT NULL, 
  CALENDAR_NAME           varchar(50), 
  CALENDAR_OWNER_ID       varchar(75), 
  CALENDAR_SHARED_WITH_ID varchar(75) NOT NULL, 
  CALENDAR_ID             varchar(75) NOT NULL, 
  ACTIVE_FLAG             char(1) DEFAULT 'Y', 
  VIEW_ONLY               char(1), 
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
-- >>>>>>> develop
  LAST_UPDATE         timestamp NULL) ENGINE=InnoDB;
