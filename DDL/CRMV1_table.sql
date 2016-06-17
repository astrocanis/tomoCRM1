CREATE TABLE ADDRESSES (
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
  LAST_UPDATE       timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE ADDRESS_TYPES (
  ID               varchar(75) NOT NULL, 
  TYPE_CODE        varchar(50) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY        varchar(75) NOT NULL, 
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY   varchar(75), 
  LAST_UPDATE       timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

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
  FILE_NAME        varchar(75), 
  GRAPHIC_TYPE     varchar(8), 
  LOGO_TITLE       varchar(8)) ENGINE=InnoDB;

CREATE TABLE MESSAGE_MASTER (
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
  DATE_CREATED     timestamp default CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATE_BY   varchar(75), 
  LAST_UPDATE      timestamp default CURRENT_TIMESTAMP, 
  PRIMARY KEY (MESSAGE_ID)) ENGINE=InnoDB;

CREATE TABLE MODULE_MASTER (
  MODULE_NAME            varchar(255) DEFAULT '' NOT NULL, 
  MODULE_TYPE_CODE       varchar(10) NOT NULL, 
  DESCRIPTION            varchar(255), 
  APPLICATION_NAME       varchar(255), 
  MODULE_SOURCE_PATH     varchar(80), 
  MODULE_EXECUTABLE_PATH varchar(80), 
  CREATED_BY             varchar(75) NOT NULL, 
  DATE_CREATED           timestamp NOT NULL, 
  LAST_UPDATED_BY        varchar(75), 
  LAST_UPDATE            timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE MODULE_NETWORK_MASTER (
  PARENT_MODULE      varchar(255) NOT NULL, 
  CHILD_MODULE       varchar(255) NOT NULL, 
  CALLING_METHOD_IND varchar(1) NOT NULL) ENGINE=InnoDB;

CREATE TABLE ORGANIZATIONS (
  ID                     varchar(75) NOT NULL, 
  NAME                   varchar(200) NOT NULL, 
  ORGANIZATION_TYPE_ID   varchar(75) NOT NULL, 
  ACTIVE_FLAG            char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY             varchar(75) NOT NULL, 
  DATE_CREATED           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY        varchar(75), 
  LAST_UPDATE            timestamp default CURRENT_TIMESTAMP, 
  PARENT_ORGANIZATION_ID varchar(75) NOT NULL) ENGINE=InnoDB;

CREATE TABLE ORGANIZATION_PERSONS (
  ID               varchar(75) NOT NULL, 
  ORGANIZATION_ID  varchar(75) NOT NULL, 
  PERSON_ID        varchar(75) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  ORG_POSITION     varchar(50),
  CREATED_BY       varchar(75) NOT NULL, 
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(75), 
  LAST_UPDATE      timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE ORGANIZATION_TYPES (
  ID               varchar(75) NOT NULL, 
  TYPE_CODE        varchar(50) NOT NULL, 
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY       varchar(75) NOT NULL, 
  DATE_CREATED     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(75), 
  LAST_UPDATE      timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE PERSONS (
  ID               varchar(75) NOT NULL, 
  LAST_NAME        varchar(50) NOT NULL, 
  FIRST_NAME       varchar(50) NOT NULL, 
  MIDDLE_NAME      varchar(50), 
  DATE_OF_BIRTH    date,
  ACTIVE_INDICATOR char(1) DEFAULT 'A' NOT NULL, 
  CREATED_BY       varchar(75) NOT NULL, 
  CREATED_DATE     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY  varchar(75), 
  LAST_UPDATE      timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE PERSON_ADDRESSES (
  ID              varchar(75) NOT NULL, 
  ADDRESS_TYPE_ID varchar(75) NOT NULL, 
  PERSON_ID       varchar(75) NOT NULL, 
  ADDRESS_ID      varchar(75) NOT NULL, 
  PRIMARY_FLAG    varchar(1) NOT NULL,
  VALID_FROM      date,
  VALID_TO        date,
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp default CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
  LAST_UPDATE     timestamp  default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE ROLES (
  ID                varchar(75) NOT NULL, 
  ROLE_NAME         varchar(30) NOT NULL, 
  DESCRIPTION       varchar(255), 
  ACCESS_LEVEL_CODE varchar(8) NOT NULL, 
  ACTIVE_FLAG       varchar(1) DEFAULT 'Y', 
  CREATED_BY        varchar(75) NOT NULL, 
  DATE_CREATED      timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY   varchar(75), 
  LAST_UPDATE       timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

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
  LAST_UPDATE         timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE ROLE_MODULE_DETAILS (
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
  LAST_UPDATE     timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE ROLE_USERS (
  USER_ID     varchar(75) NOT NULL, 
  ROLE_ID     varchar(75) NOT NULL, 
  ACTIVE_FLAG varchar(1) DEFAULT 'Y') ENGINE=InnoDB;

CREATE TABLE USERS (
  ID              varchar(75) NOT NULL, 
  USERNAME        varchar(75) NOT NULL, 
  PERSON_ID       varchar(75) NOT NULL, 
  PASSWORD        varchar(30) NOT NULL, 
  PASSWORD_DATE   date NOT NULL, 
  ACTIVE_FLAG     char(1) DEFAULT 'Y' NOT NULL, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
  LAST_UPDATE     timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE USER_MODULES (
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
  LAST_UPDATE         timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE USER_MODULE_DETAILS (
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
  LAST_UPDATE     timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE USER_OPTION_APPLICATION_TYPES (
  APP_TYPE         varchar(30) NOT NULL, 
  USER_UPDATE_FLAG varchar(1) NOT NULL) ENGINE=InnoDB;

CREATE TABLE PERSON_PHONES (
  ID              varchar(75) NOT NULL, 
  PERSON_ID       varchar(75) NOT NULL, 
  PHONE_NUMBER    varchar(20) NOT NULL, 
  ACTIVE_IND      varchar(1) DEFAULT 'Y' NOT NULL, 
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY varchar(75) comment 'D_B', 
  LAST_UPDATE     timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE PERSON_SOCIAL_MEDIA (
  ID                   varchar(75) NOT NULL, 
  PERSON_ID            varchar(75) NOT NULL, 
  SOCIAL_MEDIA_TYPE_ID varchar(75) NOT NULL, 
  SOCIAL_MEDIA_VALUE   varchar(255) NOT NULL, 
  ACTIVE_IND           varchar(1) NOT NULL, 
  CREATED_BY           varchar(75) NOT NULL, 
  DATE_CREATED         timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  LAST_UPDATED_BY      varchar(75), 
  LAST_UPDATE          timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE SOCIAL_MEDIA_TYPES (
  ID         varchar(75) NOT NULL, 
  MEDIA_TYPE varchar(255) NOT NULL) ENGINE=InnoDB;

CREATE TABLE ORGANIZATION_ADDRESSES (
  ORGANIZATION_ID varchar(75) NOT NULL, 
  ADDRESS_ID      varchar(75) NOT NULL, 
  ADDRESS_TYPE_ID varchar(75) NOT NULL, 
  PRIMARY_FLAG    varchar(1) NOT NULL,
  CREATED_BY      varchar(75) NOT NULL, 
  DATE_CREATED    timestamp NOT NULL, 
  LAST_UPDATED_BY varchar(75), 
  LAST_UPDATE     timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE CALENDAR_EVENTS (
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
  LAST_UPDATE     timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE CALENDAR_MASTER (
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
  LAST_UPDATE               timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

CREATE TABLE PERSON_CALENDARS (
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
  LAST_UPDATE             timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;

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
  NOTES               longtext, 
  CREATED_BY          varchar(75) NOT NULL, 
  DATE_CREATED        timestamp NOT NULL, 
  LAST_UDPATED_BY     varchar(75), 
  LAST_UPDATE         timestamp default CURRENT_TIMESTAMP) ENGINE=InnoDB;
