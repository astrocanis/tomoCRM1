/*
08/06/201611:30:55 PM - tgray
*/
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
