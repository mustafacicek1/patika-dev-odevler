--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	birthday DATE
);

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, email, birthday) values ('Sisile', 'skordovani0@nih.gov', '1967-04-05');
insert into employee (name, email, birthday) values ('Dill', 'dbuye1@weibo.com', null);
insert into employee (name, email, birthday) values ('Raimundo', 'rgilardengo2@fastcompany.com', null);
insert into employee (name, email, birthday) values ('Errol', 'eungaretti3@cpanel.net', '1963-06-09');
insert into employee (name, email, birthday) values ('Conney', 'cscorthorne4@intel.com', null);
insert into employee (name, email, birthday) values ('Margarethe', 'mkingsbury5@google.com', '1981-06-05');
insert into employee (name, email, birthday) values ('Dolly', 'dbullers6@mozilla.com', '1992-08-12');
insert into employee (name, email, birthday) values ('Che', 'cwillatt7@yahoo.co.jp', '1994-03-19');
insert into employee (name, email, birthday) values ('Georas', 'glennox8@w3.org', '1978-10-08');
insert into employee (name, email, birthday) values ('Gerda', 'gtarpey9@toplist.cz', null);
insert into employee (name, email, birthday) values ('Alli', 'aprandia@themeforest.net', '1988-02-03');
insert into employee (name, email, birthday) values ('Lucine', 'lpointsb@bizjournals.com', '1964-08-27');
insert into employee (name, email, birthday) values ('Freddi', 'fphebeec@businessinsider.com', null);
insert into employee (name, email, birthday) values ('Ladonna', 'ltomashovd@blogger.com', '1951-07-19');
insert into employee (name, email, birthday) values ('Eberhard', 'emoyere@wikia.com', null);
insert into employee (name, email, birthday) values ('Kylynn', 'kiddinsf@comcast.net', '1956-07-07');
insert into employee (name, email, birthday) values ('Sibella', 'scerseyg@bbc.co.uk', '1999-07-14');
insert into employee (name, email, birthday) values ('Marita', 'mathoweh@naver.com', '1959-08-28');
insert into employee (name, email, birthday) values ('Clemmie', 'corgeni@weebly.com', '1971-03-14');
insert into employee (name, email, birthday) values ('Audrey', 'atyghtj@toplist.cz', '1985-05-11');
insert into employee (name, email, birthday) values ('Dalis', 'dcurrork@nba.com', null);
insert into employee (name, email, birthday) values ('Lura', 'lmckeadyl@youtu.be', null);
insert into employee (name, email, birthday) values ('Celina', 'cwardlawm@chron.com', '1962-09-12');
insert into employee (name, email, birthday) values ('Amabel', 'afinnn@businessweek.com', '1953-12-17');
insert into employee (name, email, birthday) values ('Worden', 'woxenfordo@zimbio.com', null);
insert into employee (name, email, birthday) values ('Kennan', 'khaggardp@fastcompany.com', '1991-05-03');
insert into employee (name, email, birthday) values ('Thomasina', 'twestheadq@instagram.com', '1997-12-14');
insert into employee (name, email, birthday) values ('Grata', 'gseakr@businessweek.com', '1959-01-30');
insert into employee (name, email, birthday) values ('Berk', 'bwederells@wix.com', '1952-06-26');
insert into employee (name, email, birthday) values ('Rosabel', 'ryacobt@aboutads.info', '1990-06-30');
insert into employee (name, email, birthday) values ('Adelle', 'awiggallu@amazon.co.uk', '1996-01-12');
insert into employee (name, email, birthday) values ('Kelley', 'kbalaisonv@vimeo.com', '1966-08-27');
insert into employee (name, email, birthday) values ('Fanchon', 'fsantusw@oracle.com', null);
insert into employee (name, email, birthday) values ('Kelsey', 'kfendlenx@goodreads.com', '1971-05-29');
insert into employee (name, email, birthday) values ('Dall', 'dcowinsy@usnews.com', '1997-10-16');
insert into employee (name, email, birthday) values ('Dodi', 'dgrunnillz@wired.com', '1968-02-14');
insert into employee (name, email, birthday) values ('Aldrich', 'ariden10@oaic.gov.au', '1988-12-27');
insert into employee (name, email, birthday) values ('Jdavie', 'jocallaghan11@networkadvertising.org', '1960-01-24');
insert into employee (name, email, birthday) values ('Frasco', 'fingamells12@topsy.com', '1954-12-01');
insert into employee (name, email, birthday) values ('Ed', 'eshurrocks13@ucoz.ru', '1999-05-07');
insert into employee (name, email, birthday) values ('Adena', 'adudley14@flickr.com', '1976-01-31');
insert into employee (name, email, birthday) values ('Cristionna', 'cblackler15@sakura.ne.jp', '1963-11-27');
insert into employee (name, email, birthday) values ('Grant', 'gmacdonell16@psu.edu', null);
insert into employee (name, email, birthday) values ('Tommie', 'tcaban17@seattletimes.com', '1952-04-16');
insert into employee (name, email, birthday) values ('Clare', 'ckoch18@unesco.org', '1987-01-23');
insert into employee (name, email, birthday) values ('Odette', 'obradman19@creativecommons.org', '2000-03-08');
insert into employee (name, email, birthday) values ('Miguelita', 'mkupec1a@google.com.br', '1997-11-03');
insert into employee (name, email, birthday) values ('Cullen', 'cchapier1b@bizjournals.com', '1968-07-17');
insert into employee (name, email, birthday) values ('Gillan', 'gsatyford1c@surveymonkey.com', null);
insert into employee (name, email, birthday) values ('Selena', 'shendrickx1d@nydailynews.com', null);

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'Ahmet',
	email = 'ahmet@gmail.com',
	birthday = '1987-12-25'
WHERE id = 2;

UPDATE employee
SET name = 'Veli',
	email = 'veli@gmail.com',
	birthday = '1995-01-12'
WHERE name = 'Conney';

UPDATE employee
SET name = 'Test',
	email = 'test@gmail.com',
	birthday = '1995-01-12'
WHERE name = '%n';

UPDATE employee
SET name = 'XXXX',
	email = 'yyyy@gmail.com',
	birthday = '2000-01-01'
WHERE email LIKE 'a%';

UPDATE employee
SET name = 'zzzz',
	email = 'zzzz@gmail.com',
	birthday = '2000-01-01'
WHERE birthday < '1960-01-01';

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id=5;

DELETE FROM employee
WHERE name ILIKE 'z%';

DELETE FROM employee
WHERE email ILIKE '%b%b%';

DELETE FROM employee
WHERE birthday >= '2000-01-01';

DELETE FROM employee
WHERE id > 40;