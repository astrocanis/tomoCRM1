/*
<<<<<<< HEAD
28/05/201611:32:35 PM - tgray
=======
08/06/201611:30:55 PM - tgray
>>>>>>> develop
*/
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
