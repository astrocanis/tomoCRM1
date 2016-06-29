/*
<<<<<<< HEAD
28/05/201611:32:35 PM - tgray
=======
08/06/201611:30:55 PM - tgray
>>>>>>> develop
*/
alter table person_addresses add index person_addresses_ibfk_1 (person_id), add constraint person_addresses_ibfk_1 foreign key (person_id) references persons (id) on update no action on delete no action;
alter table person_addresses add index person_addresses_ibfk_2 (address_id), add constraint person_addresses_ibfk_2 foreign key (address_id) references addresses (id) on update no action on delete no action;
alter table user_modules add index fkuser_modul680151 (user_id), add constraint fkuser_modul680151 foreign key (user_id) references users (id);
alter table user_modules add index fkuser_modul400032 (module_name), add constraint fkuser_modul400032 foreign key (module_name) references module_master (module_name);
alter table user_module_details add index fkuser_modul394998 (user_id, module_name), add constraint fkuser_modul394998 foreign key (user_id, module_name) references user_modules (user_id, module_name);
alter table role_modules add index fkrole_modul913830 (role_id), add constraint fkrole_modul913830 foreign key (role_id) references roles (id);
alter table role_module_details add index fkrole_modul249085 (role_id, module_name), add constraint fkrole_modul249085 foreign key (role_id, module_name) references role_modules (role_id, module_name);
alter table person_addresses add index fkperson_add300675 (address_type_id), add constraint fkperson_add300675 foreign key (address_type_id) references address_types (id);
alter table role_modules add index fkrole_modul670106 (module_name), add constraint fkrole_modul670106 foreign key (module_name) references module_master (module_name);
alter table module_network_master add index fkmodule_net5037 (parent_module), add constraint fkmodule_net5037 foreign key (parent_module) references module_master (module_name);
alter table module_network_master add index fkmodule_net905967 (child_module), add constraint fkmodule_net905967 foreign key (child_module) references module_master (module_name);
alter table organizations add index fkorganizati103696 (parent_organization_id), add constraint fkorganizati103696 foreign key (parent_organization_id) references organizations (id);
alter table person_phones add index fkperson_pho118846 (person_id), add constraint fkperson_pho118846 foreign key (person_id) references persons (id);
alter table person_social_media add index fkperson_soc296414 (person_id), add constraint fkperson_soc296414 foreign key (person_id) references persons (id);
alter table person_social_media add index fkperson_soc625839 (social_media_type_id), add constraint fkperson_soc625839 foreign key (social_media_type_id) references social_media_types (id);
alter table organization_persons add index fkorganizati712927 (person_id), add constraint fkorganizati712927 foreign key (person_id) references persons (id);
alter table organization_persons add index fkorganizati189823 (organization_id), add constraint fkorganizati189823 foreign key (organization_id) references organizations (id);
alter table organizations add index fkorganizati618711 (organization_type_id), add constraint fkorganizati618711 foreign key (organization_type_id) references organization_types (id);
alter table organization_addresses add index fkorganizati366785 (organization_id), add constraint fkorganizati366785 foreign key (organization_id) references organizations (id);
alter table organization_addresses add index fkorganizati163217 (address_id), add constraint fkorganizati163217 foreign key (address_id) references addresses (id);
alter table organization_addresses add index fkorganizati870955 (address_type_id), add constraint fkorganizati870955 foreign key (address_type_id) references address_types (id);
alter table calendar_events add index fkcalendar_detail_calendar (calendar_id), add constraint fkcalendar_detail_calendar foreign key (calendar_id) references calendar_master (id) on update no action on delete no action;
alter table users add index fkusers570288 (person_id), add constraint fkusers570288 foreign key (person_id) references persons (id) on update no action on delete no action;
alter table person_calendars add index fkperson_cal450969 (calendar_owner_id), add constraint fkperson_cal450969 foreign key (calendar_owner_id) references persons (id);
alter table person_calendars add index fkperson_cal215426 (calendar_id), add constraint fkperson_cal215426 foreign key (calendar_id) references calendar_master (id);
alter table person_calendar_events add index fkperson_cal508185 (person_calendars_id), add constraint fkperson_cal508185 foreign key (person_calendars_id) references person_calendars (id);
alter table calendar_master add index fkcalendar_m988093 (inherits_from_calendar_id), add constraint fkcalendar_m988093 foreign key (inherits_from_calendar_id) references calendar_master (id);
alter table calendar_events add index fkcalendar_e760270 (calendar_id), add constraint fkcalendar_e760270 foreign key (calendar_id) references calendar_master (id);
