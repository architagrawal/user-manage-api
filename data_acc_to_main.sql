DROP DATABASE IF EXISTS Reservation_System;
CREATE DATABASE Reservation_System;

\c reservation_system;


CREATE TABLE slot(
slot_id SERIAL PRIMARY KEY,
slot_name CHARACTER VARYING(100),
slot_code CHARACTER VARYING(100),
slot_timing CHARACTER VARYING(100),
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
start_timing TIME(6) WITHOUT TIME ZONE,
end_timing TIME(6) WITHOUT TIME ZONE,
notification_start_timing CHARACTER VARYING(100),
notification_end_timing CHARACTER VARYING(100),
reservation_last_allowed_time TIME(6) WITHOUT TIME ZONE
);
INSERT INTO slot (slot_name,slot_code,slot_timing,created_date,last_updated_date,start_timing,end_timing,notification_start_timing,notification_end_timing,reservation_last_allowed_time)
 VALUES 
 ('felis,','%B1461516780917534=08104194959?1','evening','Jan 21, 2021','Feb 28, 2021','3:48 PM','3:00 PM','12:25 AM','4:35 PM','7:27 PM'),
('libero','%B6174123905132318=49065033?3','Morning','Jan 11, 2021','Mar 2, 2021','9:54 AM','2:44 PM','6:13 AM','7:27 AM','11:50 PM'),
('Aliquam','%B5459128933958385=0305347430?7','Morning','Jan 9, 2021','Feb 25, 2021','3:02 PM','9:29 AM','8:16 AM','1:57 AM','2:56 AM'),
('Phasellus','%B7336479480261436=95038413757?1','afternoon','Feb 6, 2021','Feb 27, 2021','4:33 PM','7:50 PM','11:55 PM','11:29 AM','5:29 AM'),
('quis,','%B2226041814185421=77118546097?9','Morning','Feb 21, 2021','Mar 4, 2021','4:01 AM','8:33 AM','6:35 PM','8:48 AM','12:02 AM'),
('vitae','%B9812237808382588=2302440334?3','Morning','Jan 5, 2021','Feb 25, 2021','2:49 PM','2:29 AM','12:43 AM','1:58 PM','10:12 PM'),
('dignissim','%B4196878978843835=4705702133?5','Morning','Jan 22, 2021','Mar 11, 2021','6:56 PM','6:00 PM','4:53 PM','5:21 PM','6:52 PM'),
('lacus.','%B8163829726177763=45041527699?4','afternoon','Feb 11, 2021','Feb 25, 2021','3:51 AM','8:46 AM','4:26 AM','11:32 AM','7:08 AM'),
 ('sit','%B3166189172776699=23029742?1','evening','Jan 25, 2021','Mar 11, 2021','8:23 PM','9:14 PM','11:17 PM','3:30 PM','12:27 PM'),
 ('sociis','%B6595498841069444=32102814?4','afternoon','Jan 27, 2021','Mar 9, 2021','10:15 AM','9:27 AM','10:10 PM','9:28 PM','4:28 PM');

CREATE TABLE user_detail(
user_detail_id SERIAL,
user_email_id CHARACTER VARYING(200),
user_first_name CHARACTER VARYING(40),
user_last_name CHARACTER VARYING(40),
user_isid CHARACTER VARYING(100),
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
user_timezone CHARACTER VARYING(200),
notification_identifier CHARACTER VARYING(100),
user_identifier CHARACTER VARYING(100)
);
insert into user_detail (user_email_id, user_first_name, user_last_name, user_isid, created_date, last_updated_date, user_timezone, notification_identifier, user_identifier) values ('cethridge0@meetup.com', 'Conchita', 'Ethridge', 'cethridge0', '2021-08-25 15:07:09', '2021-06-17 23:04:48', 'Africa/Porto-Novo', 'f4772275-8517-4757-b277-93d0cf19d768', '427bcafb-666d-440a-b893-c4708b029c3a');
insert into user_detail (user_email_id, user_first_name, user_last_name, user_isid, created_date, last_updated_date, user_timezone, notification_identifier, user_identifier) values ('nmingasson1@simplemachines.org', 'Nessie', 'Mingasson', 'nmingasson1', '2021-07-18 17:34:36', '2021-06-19 14:08:41', 'America/Panama', '4fe54656-0f8e-43e9-a87c-f8e3354fc91b', 'e874f066-a88a-4d6e-95ab-01edf41049c2');
insert into user_detail (user_email_id, user_first_name, user_last_name, user_isid, created_date, last_updated_date, user_timezone, notification_identifier, user_identifier) values ('nhelks2@amazonaws.com', 'Nealson', 'Helks', 'nhelks2', '2021-10-26 18:13:42', '2021-11-19 02:27:41', 'Asia/Manila', '9514297f-9551-4ad3-8493-3bfa7abb2c41', '9cda6ff4-1fd3-40a9-943d-cce4b6f13b16');
insert into user_detail (user_email_id, user_first_name, user_last_name, user_isid, created_date, last_updated_date, user_timezone, notification_identifier, user_identifier) values ('pgouly3@shutterfly.com', 'Patrizia', 'Gouly', 'pgouly3', '2021-05-30 13:02:56', '2021-04-01 08:58:42', 'Asia/Chongqing', '01ee7fc4-b106-4b21-a94c-4071fe2d53e4', '9cb0914c-da29-4b65-9910-7078a09994b5');
insert into user_detail (user_email_id, user_first_name, user_last_name, user_isid, created_date, last_updated_date, user_timezone, notification_identifier, user_identifier) values ('hcleatherow4@vimeo.com', 'Hilary', 'Cleatherow', 'hcleatherow4', '2021-10-23 20:31:07', '2021-05-03 00:17:40', 'Europe/Warsaw', '4f3b25e2-2189-48a5-82e9-9f93564eb8b3', '2682e9cf-47e8-49ba-bcd6-11cc694380f2');
insert into user_detail (user_email_id, user_first_name, user_last_name, user_isid, created_date, last_updated_date, user_timezone, notification_identifier, user_identifier) values ('ehalhead5@weibo.com', 'Emmy', 'Halhead', 'ehalhead5', '2021-04-10 10:04:34', '2021-08-28 22:31:20', 'Africa/Kinshasa', 'bf6cf730-9fd2-4fed-a416-f1f4516bb7ca', '7a14c734-3bbf-4e69-ba02-9136b07f96d8');
insert into user_detail (user_email_id, user_first_name, user_last_name, user_isid, created_date, last_updated_date, user_timezone, notification_identifier, user_identifier) values ('emordin6@fotki.com', 'Erina', 'Mordin', 'emordin6', '2021-12-19 03:25:03', '2021-06-22 03:58:12', 'Africa/Lubumbashi', 'f5f5382c-0608-4655-8480-8488252548a2', '42b0b8ec-21c2-4af0-86ee-f1d43b5257d4');
insert into user_detail (user_email_id, user_first_name, user_last_name, user_isid, created_date, last_updated_date, user_timezone, notification_identifier, user_identifier) values ('cholyland7@nyu.edu', 'Cristina', 'Holyland', 'cholyland7', '2022-03-05 04:47:06', '2022-03-26 13:49:36', 'Africa/Accra', '5739f163-04e2-49fe-8678-076bc82fadb3', 'fe7dd793-f0b0-4918-a77a-124f18b0accb');
insert into user_detail (user_email_id, user_first_name, user_last_name, user_isid, created_date, last_updated_date, user_timezone, notification_identifier, user_identifier) values ('ejoannidi8@epa.gov', 'Evangelin', 'Joannidi', 'ejoannidi8', '2021-08-09 16:24:03', '2021-09-16 19:57:28', 'Asia/Makassar', 'ae085039-e59b-4a64-aba9-c7b2a28d270a', 'e9ba7733-e5ef-4e04-9241-6256d1faad63');
insert into user_detail (user_email_id, user_first_name, user_last_name, user_isid, created_date, last_updated_date, user_timezone, notification_identifier, user_identifier) values ('dmaun9@ed.gov', 'Debbie', 'Maun', 'dmaun9', '2021-06-16 20:46:24', '2022-01-09 20:21:03', 'Asia/Bangkok', '118c3c50-2fb0-4b71-a5f4-bc6b8c1d3dc4', '93820aa8-5bf3-4f9e-8b55-c410ef874e9b');


CREATE TABLE country(
country_id SERIAL,
country_name CHARACTER VARYING(100),
country_code CHARACTER VARYING(100),
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
country_status CHARACTER VARYING(100)
);

insert into country (country_name, country_code, created_date, last_updated_date, country_status) values ('Mauritius', 'MU', '10/9/2021', '8/27/2021', 'Universal');
insert into country (country_name, country_code, created_date, last_updated_date, country_status) values ('China', 'CN', '8/27/2021', '9/29/2021', 'demand-driven');
insert into country (country_name, country_code, created_date, last_updated_date, country_status) values ('China', 'CN', '3/5/2022', '3/31/2021', 'Quality-focused');
insert into country (country_name, country_code, created_date, last_updated_date, country_status) values ('China', 'CN', '9/25/2021', '6/10/2021', 'Self-enabling');
insert into country (country_name, country_code, created_date, last_updated_date, country_status) values ('Colombia', 'CO', '8/3/2021', '1/9/2022', 'non-volatile');
insert into country (country_name, country_code, created_date, last_updated_date, country_status) values ('Philippines', 'PH', '3/15/2022', '8/19/2021', 'Quality-focused');
insert into country (country_name, country_code, created_date, last_updated_date, country_status) values ('Poland', 'PL', '11/26/2021', '12/30/2021', 'responsive');
insert into country (country_name, country_code, created_date, last_updated_date, country_status) values ('Pakistan', 'PK', '11/12/2021', '10/27/2021', 'Graphical User Interface');
insert into country (country_name, country_code, created_date, last_updated_date, country_status) values ('Micronesia', 'FM', '4/4/2021', '6/7/2021', 'architecture');
insert into country (country_name, country_code, created_date, last_updated_date, country_status) values ('Czech Republic', 'CZ', '8/9/2021', '10/15/2021', 'zero defect');

CREATE TABLE state(
state_id SERIAL,
state_name CHARACTER VARYING(100),
state_code CHARACTER VARYING(100),
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
country_id INTEGER,
state_status CHARACTER VARYING(100)
);

insert into state (state_name, state_code, created_date, last_updated_date, country_id, state_status) values ('California', '93305', '2/19/2022', '3/29/2021', 8, 'User-centric');
insert into state (state_name, state_code, created_date, last_updated_date, country_id, state_status) values ('Florida', '34981', '3/30/2021', '4/8/2021', 7, 'neural-net');
insert into state (state_name, state_code, created_date, last_updated_date, country_id, state_status) values ('Missouri', '63110', '10/14/2021', '1/3/2022', 6, 'ability');
insert into state (state_name, state_code, created_date, last_updated_date, country_id, state_status) values ('Arizona', '85040', '1/13/2022', '9/11/2021', 2, 'Enhanced');
insert into state (state_name, state_code, created_date, last_updated_date, country_id, state_status) values ('California', '90605', '10/14/2021', '8/26/2021', 9, 'grid-enabled');
insert into state (state_name, state_code, created_date, last_updated_date, country_id, state_status) values ('Nevada', '89510', '11/8/2021', '12/28/2021', 4, 'info-mediaries');
insert into state (state_name, state_code, created_date, last_updated_date, country_id, state_status) values ('Kansas', '66210', '9/16/2021', '5/8/2021', 7, 'radical');
insert into state (state_name, state_code, created_date, last_updated_date, country_id, state_status) values ('Kentucky', '40250', '4/28/2021', '3/6/2022', 2, 'emulation');
insert into state (state_name, state_code, created_date, last_updated_date, country_id, state_status) values ('California', '90055', '1/2/2022', '10/22/2021', 1, 'capacity');
insert into state (state_name, state_code, created_date, last_updated_date, country_id, state_status) values ('California', '94286', '1/8/2022', '4/24/2021', 8, 'Horizontal');

CREATE TABLE site(
site_id SERIAL,
site_name CHARACTER VARYING(100),
site_code CHARACTER VARYING(100),
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
state_id INTEGER,
allow_weekend BOOLEAN,
no_of_tabs INTEGER,
reservation_per_week INTEGER,
site_status CHARACTER VARYING(100),
timezone CHARACTER VARYING(100)
);
insert into site (site_name, site_code, created_date, last_updated_date, state_id, allow_weekend, no_of_tabs, reservation_per_week, site_status, timezone) values ('Londonderry', '75817 CEDEX 17', '5/17/2021', '3/9/2022', 7, false, 1, 6, 'frame', 'Europe/Paris');
insert into site (site_name, site_code, created_date, last_updated_date, state_id, allow_weekend, no_of_tabs, reservation_per_week, site_status, timezone) values ('Eggendart', null, '9/10/2021', '8/14/2021', 6, true, 6, 1, 'success', 'Asia/Jakarta');
insert into site (site_name, site_code, created_date, last_updated_date, state_id, allow_weekend, no_of_tabs, reservation_per_week, site_status, timezone) values ('Merchant', null, '6/24/2021', '12/12/2021', 5, false, 8, 8, 'Profit-focused', 'Asia/Urumqi');
insert into site (site_name, site_code, created_date, last_updated_date, state_id, allow_weekend, no_of_tabs, reservation_per_week, site_status, timezone) values ('Kenwood', '4785-512', '3/3/2022', '5/10/2021', 2, true, 9, 4, 'high-level', 'Europe/Lisbon');
insert into site (site_name, site_code, created_date, last_updated_date, state_id, allow_weekend, no_of_tabs, reservation_per_week, site_status, timezone) values ('Logan', '442 53', '9/19/2021', '11/24/2021', 10, true, 7, 1, 'Re-contextualized', 'Europe/Stockholm');
insert into site (site_name, site_code, created_date, last_updated_date, state_id, allow_weekend, no_of_tabs, reservation_per_week, site_status, timezone) values ('Heath', null, '7/10/2021', '10/22/2021', 1, true, 1, 2, 'web-enabled', 'Asia/Shanghai');
insert into site (site_name, site_code, created_date, last_updated_date, state_id, allow_weekend, no_of_tabs, reservation_per_week, site_status, timezone) values ('Moulton', '90610', '3/16/2022', '11/20/2021', 8, false, 1, 3, 'mission-critical', 'America/Los_Angeles');
insert into site (site_name, site_code, created_date, last_updated_date, state_id, allow_weekend, no_of_tabs, reservation_per_week, site_status, timezone) values ('Holmberg', '368692', '1/20/2022', '9/14/2021', 5, true, 4, 8, 'executive', 'Europe/Moscow');
insert into site (site_name, site_code, created_date, last_updated_date, state_id, allow_weekend, no_of_tabs, reservation_per_week, site_status, timezone) values ('Killdeer', null, '7/8/2021', '7/4/2021', 3, false, 9, 6, 'orchestration', 'Asia/Jayapura');
insert into site (site_name, site_code, created_date, last_updated_date, state_id, allow_weekend, no_of_tabs, reservation_per_week, site_status, timezone) values ('Nelson', '4640-540', '4/1/2021', '10/18/2021', 8, false, 9, 6, 'monitoring', 'Europe/Lisbon');

CREATE TABLE building(
     building_id SERIAL,
building_name CHARACTER VARYING(100),
building_code CHARACTER VARYING(100),
building_latitude DOUBLE PRECISION,
building_longitude DOUBLE PRECISION,
building_address CHARACTER VARYING(255),
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
site_id INTEGER,
building_status CHARACTER VARYING(100)
);

insert into building (building_name, building_code, building_latitude, building_longitude, building_address, created_date, last_updated_date, site_id, building_status) values ('Valley Edge', null, 18.4073894, -77.1031345, '30 Buell Alley', '3/28/2021', '1/11/2022', 4, 'intangible');
insert into building (building_name, building_code, building_latitude, building_longitude, building_address, created_date, last_updated_date, site_id, building_status) values ('Dixon', null, 40.71667, 19.56667, '3 Esch Parkway', '5/24/2021', '8/6/2021', 3, 'reciprocal');
insert into building (building_name, building_code, building_latitude, building_longitude, building_address, created_date, last_updated_date, site_id, building_status) values ('Johnson', null, 50.2923198, 27.9814782, '32157 Vera Lane', '11/29/2021', '9/18/2021', 9, 'attitude');
insert into building (building_name, building_code, building_latitude, building_longitude, building_address, created_date, last_updated_date, site_id, building_status) values ('Riverside', null, 28.677949, 108.304926, '74503 Sloan Drive', '4/13/2021', '9/26/2021', 1, 'high-level');
insert into building (building_name, building_code, building_latitude, building_longitude, building_address, created_date, last_updated_date, site_id, building_status) values ('Jackson', '141340', 56.5523691, 38.0335558, '01 Russell Avenue', '3/15/2022', '8/10/2021', 2, 'frame');
insert into building (building_name, building_code, building_latitude, building_longitude, building_address, created_date, last_updated_date, site_id, building_status) values ('Clarendon', null, 34.6886731, 44.9580161, '643 Mcguire Junction', '12/9/2021', '12/14/2021', 2, 'zero defect');
insert into building (building_name, building_code, building_latitude, building_longitude, building_address, created_date, last_updated_date, site_id, building_status) values ('Sundown', null, 16.8263127, 42.7344873, '6032 Briar Crest Street', '9/26/2021', '10/2/2021', 6, 'flexibility');
insert into building (building_name, building_code, building_latitude, building_longitude, building_address, created_date, last_updated_date, site_id, building_status) values ('Birchwood', '352 44', 56.8965251, 14.8077914, '59 Barnett Point', '10/21/2021', '1/18/2022', 2, 'coherent');
insert into building (building_name, building_code, building_latitude, building_longitude, building_address, created_date, last_updated_date, site_id, building_status) values ('Sauthoff', null, -7.7276103, 110.8582722, '85274 Loftsgordon Avenue', '3/1/2022', '1/11/2022', 3, 'Mandatory');
insert into building (building_name, building_code, building_latitude, building_longitude, building_address, created_date, last_updated_date, site_id, building_status) values ('Drewry', '456918', 55.0467482, 59.0082549, '32504 Kim Pass', '9/10/2021', '1/10/2022', 1, 'disintermediate');

CREATE TABLE floor(
floor_id SERIAL,
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
floor_name CHARACTER VARYING(255),
floor_code CHARACTER VARYING(100),
building_id INTEGER,
floor_status CHARACTER VARYING(100)
);
insert into floor (created_date, last_updated_date, floor_name, floor_code, building_id, floor_status) values ('4/27/2021', '10/23/2021', 'Connelly, Quigley and Christiansen', 'V8537', 10, 'optimal');
insert into floor (created_date, last_updated_date, floor_name, floor_code, building_id, floor_status) values ('9/26/2021', '3/13/2022', 'Goldner, Stracke and Jerde', '5935', 2, 'Total');
insert into floor (created_date, last_updated_date, floor_name, floor_code, building_id, floor_status) values ('12/26/2021', '12/6/2021', 'Monahan, Lesch and Wilderman', '83941', 1, 'implementation');
insert into floor (created_date, last_updated_date, floor_name, floor_code, building_id, floor_status) values ('10/8/2021', '4/22/2021', 'Schinner, Hammes and O''Kon', '99585', 4, 'Customer-focused');
insert into floor (created_date, last_updated_date, floor_name, floor_code, building_id, floor_status) values ('5/27/2021', '3/29/2021', 'Hermann Inc', '67630', 8, '4th generation');
insert into floor (created_date, last_updated_date, floor_name, floor_code, building_id, floor_status) values ('10/9/2021', '1/5/2022', 'Kuvalis, Schuppe and Fritsch', '99666', 3, 'didactic');
insert into floor (created_date, last_updated_date, floor_name, floor_code, building_id, floor_status) values ('11/20/2021', '2/3/2022', 'Auer-Lakin', 'V760', 3, 'Profound');
insert into floor (created_date, last_updated_date, floor_name, floor_code, building_id, floor_status) values ('1/1/2022', '4/4/2021', 'Harvey, Watsica and Powlowski', '72972', 2, 'analyzer');
insert into floor (created_date, last_updated_date, floor_name, floor_code, building_id, floor_status) values ('9/12/2021', '11/12/2021', 'Cormier, Auer and Koelpin', '94336', 5, 'needs-based');
insert into floor (created_date, last_updated_date, floor_name, floor_code, building_id, floor_status) values ('3/8/2022', '5/4/2021', 'VonRueden, Beatty and Champlin', '99631', 4, 'directional');

CREATE TABLE team(
team_id SERIAL,
team_name CHARACTER VARYING(255),
team_code CHARACTER VARYING(100),
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE
);
insert into team (team_name, team_code, created_date, last_updated_date) values ('Grady and Sons', '60883', '12/11/2021', '1/19/2022');
insert into team (team_name, team_code, created_date, last_updated_date) values ('Leffler, O''Hara and Metz', '01645', '6/23/2021', '4/15/2021');
insert into team (team_name, team_code, created_date, last_updated_date) values ('Lynch LLC', '2646', '1/20/2022', '6/2/2021');
insert into team (team_name, team_code, created_date, last_updated_date) values ('Ward Inc', 'V773', '3/30/2021', '10/3/2021');
insert into team (team_name, team_code, created_date, last_updated_date) values ('Emard and Sons', '81407', '6/18/2021', '6/7/2021');
insert into team (team_name, team_code, created_date, last_updated_date) values ('Pollich, Gleason and Bailey', 'E8643', '11/17/2021', '12/28/2021');
insert into team (team_name, team_code, created_date, last_updated_date) values ('Daugherty Inc', 'E9802', '4/21/2021', '5/13/2021');
insert into team (team_name, team_code, created_date, last_updated_date) values ('Torphy LLC', 'E8186', '10/27/2021', '8/14/2021');
insert into team (team_name, team_code, created_date, last_updated_date) values ('Mills-Wilderman', 'V1522', '7/2/2021', '7/26/2021');
insert into team (team_name, team_code, created_date, last_updated_date) values ('Labadie-Yost', '51636', '4/4/2021', '8/3/2021');

CREATE TABLE team_floor_mapping(
team_floor_mapping_id SERIAL,
team_id INTEGER,
floor_id INTEGER,
capacity INTEGER,
allowed_capacity INTEGER,
team_floor_indoormap_link CHARACTER VARYING(255),
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
team_floor_mapping_status CHARACTER VARYING(100),
assessment_module_id CHARACTER VARYING(255)
);
insert into team_floor_mapping (team_id, floor_id, capacity, allowed_capacity, team_floor_indoormap_link, created_date, last_updated_date, team_floor_mapping_status, assessment_module_id) values (6, 9, 17, 236, 'http://dummyimage.com/193x100.png/5fa2dd/ffffff', '12/28/2021', '2/5/2022', 'next generation', '3520');
insert into team_floor_mapping (team_id, floor_id, capacity, allowed_capacity, team_floor_indoormap_link, created_date, last_updated_date, team_floor_mapping_status, assessment_module_id) values (1, 7, 30, 26, 'http://dummyimage.com/200x100.png/cc0000/ffffff', '8/3/2021', '10/10/2021', 'Robust', '8903');
insert into team_floor_mapping (team_id, floor_id, capacity, allowed_capacity, team_floor_indoormap_link, created_date, last_updated_date, team_floor_mapping_status, assessment_module_id) values (2, 10, 91, 84, 'http://dummyimage.com/193x100.png/dddddd/000000', '2/10/2022', '6/23/2021', 'moratorium', '9765');
insert into team_floor_mapping (team_id, floor_id, capacity, allowed_capacity, team_floor_indoormap_link, created_date, last_updated_date, team_floor_mapping_status, assessment_module_id) values (10, 10, 49, 138, 'http://dummyimage.com/185x100.png/ff4444/ffffff', '7/19/2021', '8/29/2021', 'protocol', '0109');
insert into team_floor_mapping (team_id, floor_id, capacity, allowed_capacity, team_floor_indoormap_link, created_date, last_updated_date, team_floor_mapping_status, assessment_module_id) values (7, 6, 1, 126, 'http://dummyimage.com/230x100.png/dddddd/000000', '5/7/2021', '6/23/2021', 'multi-tasking', '3535');
insert into team_floor_mapping (team_id, floor_id, capacity, allowed_capacity, team_floor_indoormap_link, created_date, last_updated_date, team_floor_mapping_status, assessment_module_id) values (3, 5, 20, 185, 'http://dummyimage.com/141x100.png/cc0000/ffffff', '9/29/2021', '6/27/2021', 'Cross-platform', '9337');
insert into team_floor_mapping (team_id, floor_id, capacity, allowed_capacity, team_floor_indoormap_link, created_date, last_updated_date, team_floor_mapping_status, assessment_module_id) values (7, 6, 60, 90, 'http://dummyimage.com/165x100.png/ff4444/ffffff', '12/1/2021', '3/16/2022', 'software', '3804');
insert into team_floor_mapping (team_id, floor_id, capacity, allowed_capacity, team_floor_indoormap_link, created_date, last_updated_date, team_floor_mapping_status, assessment_module_id) values (6, 3, 13, 13, 'http://dummyimage.com/237x100.png/dddddd/000000', '4/26/2021', '5/26/2021', 'bottom-line', '0982');
insert into team_floor_mapping (team_id, floor_id, capacity, allowed_capacity, team_floor_indoormap_link, created_date, last_updated_date, team_floor_mapping_status, assessment_module_id) values (7, 7, 49, 170, 'http://dummyimage.com/128x100.png/ff4444/ffffff', '1/21/2022', '7/30/2021', 'productivity', '2724');
insert into team_floor_mapping (team_id, floor_id, capacity, allowed_capacity, team_floor_indoormap_link, created_date, last_updated_date, team_floor_mapping_status, assessment_module_id) values (8, 2, 36, 242, 'http://dummyimage.com/194x100.png/ff4444/ffffff', '1/15/2022', '11/14/2021', 'leverage', '3761');

CREATE TABLE desk(
desk_id SERIAL,
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
desk_number CHARACTER VARYING(255),
desk_code CHARACTER VARYING(100),
desk_neighbourhood CHARACTER VARYING(100),
team_floor_mapping_id INTEGER,
desk_status CHARACTER VARYING(100),
indoormap_id CHARACTER VARYING(255)
);
insert into desk (created_date, last_updated_date, desk_number, desk_code, desk_neighbourhood, team_floor_mapping_id, desk_status, indoormap_id) values ('9/2/2021', '8/23/2021', 32, '9233', '4262', 10, 'Programmable', '6869');
insert into desk (created_date, last_updated_date, desk_number, desk_code, desk_neighbourhood, team_floor_mapping_id, desk_status, indoormap_id) values ('5/13/2021', '5/6/2021', 55, '7880', '4107', 7, 'Streamlined', '6385');
insert into desk (created_date, last_updated_date, desk_number, desk_code, desk_neighbourhood, team_floor_mapping_id, desk_status, indoormap_id) values ('11/27/2021', '9/11/2021', 27, '435', '8184', 8, 'Monitored', '708');
insert into desk (created_date, last_updated_date, desk_number, desk_code, desk_neighbourhood, team_floor_mapping_id, desk_status, indoormap_id) values ('12/13/2021', '3/21/2022', 85, '8457', '409', 7, 'high-level', '8457');
insert into desk (created_date, last_updated_date, desk_number, desk_code, desk_neighbourhood, team_floor_mapping_id, desk_status, indoormap_id) values ('8/1/2021', '6/25/2021', 19, '9542', '6191', 5, 'protocol', '8667');
insert into desk (created_date, last_updated_date, desk_number, desk_code, desk_neighbourhood, team_floor_mapping_id, desk_status, indoormap_id) values ('10/18/2021', '5/7/2021', 41, '4108', '6629', 8, 'service-desk', '8783');
insert into desk (created_date, last_updated_date, desk_number, desk_code, desk_neighbourhood, team_floor_mapping_id, desk_status, indoormap_id) values ('4/9/2021', '1/20/2022', 8, '9396', '9220', 4, 'Re-engineered', '0911');
insert into desk (created_date, last_updated_date, desk_number, desk_code, desk_neighbourhood, team_floor_mapping_id, desk_status, indoormap_id) values ('12/16/2021', '10/5/2021', 94, '3726', '1021', 6, 'frame', '0152');
insert into desk (created_date, last_updated_date, desk_number, desk_code, desk_neighbourhood, team_floor_mapping_id, desk_status, indoormap_id) values ('11/9/2021', '7/28/2021', 29, '3194', '9503', 1, 'incremental', '9544');
insert into desk (created_date, last_updated_date, desk_number, desk_code, desk_neighbourhood, team_floor_mapping_id, desk_status, indoormap_id) values ('2/22/2022', '4/21/2021', 65, '5529', '5900', 5, 'Graphic Interface', '7959');

CREATE TABLE reservation(
reservation_id SERIAL,
reservation_date TIMESTAMP(6) WITHOUT TIME ZONE,
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
team_floor_mapping_id INTEGER,
desk_id INTEGER, 
user_detail_id INTEGER,
slot_id INTEGER,
is_deleted BOOLEAN
);
insert into reservation (reservation_date, created_date, last_updated_date, team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted) values ('3/18/2022', '11/30/2021', '2/20/2022', 10, 63, 3, 8, true);
insert into reservation (reservation_date, created_date, last_updated_date, team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted) values ('1/23/2022', '3/27/2022', '9/18/2021', 10, 5, 6, 6, true);
insert into reservation (reservation_date, created_date, last_updated_date, team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted) values ('10/27/2021', '11/30/2021', '10/4/2021', 9, 74, 8, 1, true);
insert into reservation (reservation_date, created_date, last_updated_date, team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted) values ('12/12/2021', '7/17/2021', '2/15/2022', 5, 3, 7, 3, true);
insert into reservation (reservation_date, created_date, last_updated_date, team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted) values ('3/15/2022', '11/20/2021', '7/7/2021', 7, 85, 6, 4, false);
insert into reservation (reservation_date, created_date, last_updated_date, team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted) values ('2/21/2022', '10/8/2021', '12/23/2021', 8, 66, 9, 9, true);
insert into reservation (reservation_date, created_date, last_updated_date, team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted) values ('6/5/2021', '8/4/2021', '10/14/2021', 2, 2, 5, 9, true);
insert into reservation (reservation_date, created_date, last_updated_date, team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted) values ('4/9/2021', '11/13/2021', '4/28/2021', 8, 14, 7, 7, true);
insert into reservation (reservation_date, created_date, last_updated_date, team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted) values ('11/30/2021', '7/18/2021', '2/8/2022', 6, 79, 9, 4, false);
insert into reservation (reservation_date, created_date, last_updated_date, team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted) values ('12/13/2021', '1/19/2022', '8/4/2021', 10, 63, 3, 6, true);

CREATE TABLE reservation_info(
reservation_info_id SERIAL,
reserved_on_date TIMESTAMP(6) WITHOUT TIME ZONE,
cancelled_on_date TIMESTAMP(6) WITHOUT TIME ZONE,
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
reservation_id INTEGER,
reservation_number CHARACTER VARYING(255)
);
insert into reservation_info (reserved_on_date, cancelled_on_date, created_date, last_updated_date, reservation_id, reservation_number) values ('12/5/2021', '1/2/2022', '3/20/2022', '9/7/2021', 3, '8472');
insert into reservation_info (reserved_on_date, cancelled_on_date, created_date, last_updated_date, reservation_id, reservation_number) values ('1/15/2022', '5/27/2021', '10/19/2021', '8/8/2021', 8, '8022');
insert into reservation_info (reserved_on_date, cancelled_on_date, created_date, last_updated_date, reservation_id, reservation_number) values ('12/13/2021', '5/22/2021', '10/14/2021', '10/23/2021', 6, '4832');
insert into reservation_info (reserved_on_date, cancelled_on_date, created_date, last_updated_date, reservation_id, reservation_number) values ('10/11/2021', '7/2/2021', '11/13/2021', '10/30/2021', 9, '4603');
insert into reservation_info (reserved_on_date, cancelled_on_date, created_date, last_updated_date, reservation_id, reservation_number) values ('5/30/2021', '8/4/2021', '7/22/2021', '5/1/2021', 9, '5597');
insert into reservation_info (reserved_on_date, cancelled_on_date, created_date, last_updated_date, reservation_id, reservation_number) values ('4/13/2021', '1/20/2022', '2/4/2022', '8/27/2021', 4, '8772');
insert into reservation_info (reserved_on_date, cancelled_on_date, created_date, last_updated_date, reservation_id, reservation_number) values ('10/10/2021', '4/20/2021', '4/17/2021', '12/26/2021', 9, '9043');
insert into reservation_info (reserved_on_date, cancelled_on_date, created_date, last_updated_date, reservation_id, reservation_number) values ('1/14/2022', '8/11/2021', '4/1/2021', '5/21/2021', 7, '4466');
insert into reservation_info (reserved_on_date, cancelled_on_date, created_date, last_updated_date, reservation_id, reservation_number) values ('7/23/2021', '1/31/2022', '7/24/2021', '7/15/2021', 1, '8794');
insert into reservation_info (reserved_on_date, cancelled_on_date, created_date, last_updated_date, reservation_id, reservation_number) values ('12/10/2021', '2/10/2022', '1/1/2022', '11/23/2021', 6, '9939');

CREATE TABLE check_in(
check_in_id SERIAL,
created_date TIMESTAMP(6) WITHOUT TIME ZONE,
last_updated_date TIMESTAMP(6) WITHOUT TIME ZONE,
user_detail_id INTEGER,
reservation_id INTEGER
);
insert into check_in (created_date, last_updated_date, user_detail_id, reservation_id) values ('6/21/2021', '11/4/2021', 5, 9);
insert into check_in (created_date, last_updated_date, user_detail_id, reservation_id) values ('1/9/2022', '9/8/2021', 6, 6);
insert into check_in (created_date, last_updated_date, user_detail_id, reservation_id) values ('6/3/2021', '10/1/2021', 10, 5);
insert into check_in (created_date, last_updated_date, user_detail_id, reservation_id) values ('8/6/2021', '4/25/2021', 7, 9);
insert into check_in (created_date, last_updated_date, user_detail_id, reservation_id) values ('12/2/2021', '1/15/2022', 1, 9);
insert into check_in (created_date, last_updated_date, user_detail_id, reservation_id) values ('1/29/2022', '5/15/2021', 3, 7);
insert into check_in (created_date, last_updated_date, user_detail_id, reservation_id) values ('10/28/2021', '8/12/2021', 8, 3);
insert into check_in (created_date, last_updated_date, user_detail_id, reservation_id) values ('8/26/2021', '8/7/2021', 7, 5);
insert into check_in (created_date, last_updated_date, user_detail_id, reservation_id) values ('9/17/2021', '11/8/2021', 10, 5);
insert into check_in (created_date, last_updated_date, user_detail_id, reservation_id) values ('12/28/2021', '5/16/2021', 6, 10);


