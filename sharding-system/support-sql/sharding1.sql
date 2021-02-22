USE SHARDING_DB;
DROP TABLE IF EXISTS CUSTOMERS ;

CREATE TABLE CUSTOMERS (
    CUSTOMER_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_FIRSTNAME VARCHAR(50),
    CUSTOMER_LASTNAME VARCHAR(50),
    CUSTOMER_TEL VARCHAR(30),
    CUSTOMER_EMAIL VARCHAR(50),
    CUSTOMER_ADDRESS VARCHAR(100)
);

insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Pryce', 'Rizzetti', '3545312543', 'prizzetti0@google.com.br', '471 Shelley Alley');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Matias', 'Pittwood', '1065800830', 'mpittwood1@people.com.cn', '49906 Northfield Way');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Alfie', 'Fountaine', '9863671892', 'afountaine2@plala.or.jp', '8 Sauthoff Avenue');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Georgette', 'Jellico', '2554057669', 'gjellico3@tinyurl.com', '579 Mitchell Avenue');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Perry', 'Dufaur', '3558045521', 'pdufaur4@mediafire.com', '87 Carberry Terrace');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Base', 'Fuentez', '5309474943', 'bfuentez5@freewebs.com', '2480 Karstens Point');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Cristie', 'Rogan', '2506252980', 'crogan6@usatoday.com', '0 Waubesa Junction');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Abdel', 'Breazeall', '3454616360', 'abreazeall7@skyrock.com', '20351 Mcguire Junction');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Emilio', 'Hathwood', '4761556618', 'ehathwood8@uol.com.br', '92609 Sunbrook Crossing');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Chloette', 'Bosdet', '8797420654', 'cbosdet9@multiply.com', '94289 Linden Plaza');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Natalina', 'Kloster', '1874900505', 'nklostera@latimes.com', '6168 Hansons Way');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Cary', 'Node', '3108088601', 'cnodeb@accuweather.com', '3407 Lien Lane');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Estel', 'Eagling', '3752233898', 'eeaglingc@ow.ly', '7434 Schurz Way');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Meryl', 'Hellmore', '5142604397', 'mhellmored@networkadvertising.org', '29 Goodland Pass');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Jodee', 'Miners', '7185365889', 'jminerse@wikispaces.com', '736 Lien Center');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Verina', 'Ellis', '1169407045', 'vellisf@tripod.com', '812 Brentwood Crossing');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Cassandra', 'Oen', '2306870190', 'coeng@behance.net', '488 Milwaukee Plaza');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Jeanna', 'Snelgrove', '4076875997', 'jsnelgroveh@cocolog-nifty.com', '2 Waubesa Terrace');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Allsun', 'Carbin', '5862533788', 'acarbini@hugedomains.com', '2 Huxley Hill');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Arabela', 'Perigoe', '8868779679', 'aperigoej@instagram.com', '6 Novick Crossing');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Vivyan', 'Jurewicz', '3003712321', 'vjurewiczk@spiegel.de', '1 3rd Circle');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Ahmed', 'Mixhel', '1449358420', 'amixhell@artisteer.com', '48 Stoughton Junction');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Lynnea', 'Allnatt', '1786980760', 'lallnattm@soup.io', '22 Dryden Court');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Willamina', 'Fransemai', '7406745678', 'wfransemain@list-manage.com', '58 Prairieview Way');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Andris', 'Itzik', '8788751088', 'aitziko@google.cn', '21101 Cordelia Crossing');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Ellyn', 'Rathmell', '3946641717', 'erathmellp@blogspot.com', '05 Donald Crossing');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Der', 'Plinck', '2442209532', 'dplinckq@washington.edu', '1363 Sage Point');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Melonie', 'Cromie', '4884280220', 'mcromier@webs.com', '46272 Lerdahl Trail');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Raeann', 'Banbrook', '9311430093', 'rbanbrooks@china.com.cn', '992 Sheridan Pass');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Leta', 'Starrs', '3187138556', 'lstarrst@ihg.com', '0325 Farwell Alley');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Eleanora', 'Sinnocke', '1119173457', 'esinnockeu@tinyurl.com', '118 Sloan Lane');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Aileen', 'Base', '1429606122', 'abasev@ifeng.com', '4 Mitchell Way');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Geoffry', 'Clymo', '6505711521', 'gclymow@paginegialle.it', '177 Glendale Terrace');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Fayre', 'Dallan', '2199570724', 'fdallanx@theglobeandmail.com', '003 Becker Trail');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Minnnie', 'Jodrellec', '2862218837', 'mjodrellecy@reddit.com', '35 Mayer Pass');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Jarid', 'Godier', '1713071827', 'jgodierz@sbwire.com', '271 Calypso Junction');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Gare', 'Haycroft', '7009898497', 'ghaycroft10@earthlink.net', '37 Sullivan Avenue');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Leigh', 'Basire', '8252593923', 'lbasire11@netscape.com', '6 Village Circle');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Lambert', 'Craythorne', '5511394220', 'lcraythorne12@wunderground.com', '8504 Fremont Drive');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Riva', 'Sally', '5013357401', 'rsally13@japanpost.jp', '0388 Butterfield Pass');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Arin', 'Haddinton', '4105037955', 'ahaddinton14@privacy.gov.au', '3844 Haas Trail');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Dalenna', 'Peasee', '5725030002', 'dpeasee15@qq.com', '5972 Forest Run Court');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Onfre', 'Spick', '5787452473', 'ospick16@parallels.com', '73567 Loftsgordon Road');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Rustie', 'Birdis', '8117667466', 'rbirdis17@seattletimes.com', '6 Sutteridge Center');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Daniel', 'Kelloch', '1111640302', 'dkelloch18@freewebs.com', '24418 Forest Dale Road');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Roxana', 'Lembcke', '5431720806', 'rlembcke19@geocities.com', '391 Stoughton Avenue');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Dianne', 'Creedland', '4089403896', 'dcreedland1a@studiopress.com', '192 Sunbrook Court');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Nathaniel', 'Deesly', '6106433843', 'ndeesly1b@umich.edu', '05832 Portage Alley');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Odette', 'Shurrocks', '5446936802', 'oshurrocks1c@jalbum.net', '5400 Northwestern Way');
insert into CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) values ('Lyndell', 'Sidle', '5024508933', 'lsidle1d@mayoclinic.com', '20 School Junction');

