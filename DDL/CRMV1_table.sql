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
  inherits_from_calendar_id varchar(75) not null, 
  description               varchar(60), 
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
