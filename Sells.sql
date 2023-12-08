CREATE TABLE Beers (
	Name	CHAR(20) UNIQUE,
	manf	CHAR(20)
);

-- Table name, col. name should start with a character (letter)

CREATE TABLE Beers (
	name	VarCHAR2(20) primary key,
	manf	VARCHAR2(20)
);
-- ORA error msg

CREATE TABLE Beers2 (
	name	VarCHAR2(20) primary key,
	manf	VARCHAR2(20)
);

CREATE TABLE Sells (
	bar		CHAR(20),
	beer	VARCHAR(20),
	price	REAL,
	PRIMARY KEY (bar, beer)
);

insert into Beers(name, manf) values('light', 'light manf');
insert into Beers(name, manf) values('light', 'light manf');
insert into Beers(manf) values('light manf');
insert into Beers(name, manf) values('', 'light manf');


select * from beers;
insert into Beers2(name, manf) values('light', 'light manf');
insert into Beers2(name, manf) values('light', 'light manf');
insert into Beers2(manf) values('light manf');
insert into Beers2(name, manf) values('', 'light manf');

-- FOREIGN KEY
DROP TABLE Beers; -- remove table definition and data
CREATE TABLE Beers (
	name	CHAR(20) PRIMARY KEY,
	manf	CHAR(20) );
Drop table sells;	
CREATE TABLE Sells (
	bar	CHAR(20),
	beer	CHAR(20) REFERENCES Beers(name),
	price	REAL 
);

Drop table sells;
DROP TABLE Beers; -- remove table definition and data
CREATE TABLE Beers (
	name	CHAR(20) PRIMARY KEY,
	manf	CHAR(20) );
	
CREATE TABLE Sells (
	bar	CHAR(20),
	beer	CHAR(20) ,
	price	REAL, 
	FOREIGN KEY(beer) REFERENCES Beers(name)
);
insert into Beers(name, manf) values('light', 'lightManf');
insert into Sells(bar, beer, price)
		values('Joes', 'light', 1.00);

drop table Beers;

drop table Beers cascade constraints;

Drop table sells;
DROP TABLE Beers; -- remove table definition and data
CREATE TABLE Beers (
	name	CHAR(20) PRIMARY KEY,
	manf	CHAR(20) );
	
CREATE TABLE Sells (
	bar	CHAR(20),
	beer	CHAR(20) ,
	price	REAL, 
	FOREIGN KEY(beer) REFERENCES Beers(name)
	on update cascade
	on delete cascade
);

insert into Beers(name, manf) values('light', 'lightManf');
insert into Sells(bar, beer, price)
		values('Joes', 'light', 1.00);


Drop table sells;
DROP TABLE Beers; -- remove table definition and data
CREATE TABLE Beers (
	name	CHAR(20) PRIMARY KEY,
	manf	CHAR(20) );
	
CREATE TABLE Sells (
	bar	CHAR(20),
	beer	CHAR(20) ,
	price	REAL, 
	FOREIGN KEY(beer) REFERENCES Beers(name)
	on delete cascade
);

insert into Beers(name, manf) values('light', 'lightManf');
insert into Sells(bar, beer, price)
		values('Joes', 'light', 1.00);
		
delete from beers
where name = 'light'
;
select * from sells;


