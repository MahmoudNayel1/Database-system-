CREATE TABLE Band (
Bandname               VARCHAR(37)                         PRIMARY KEY,
BandID                 INT                                 NOT NULL ,
Security_Clearance    VARCHAR(50)                          NOT NULL,
jobtype               VARCHAR(30)                          NOT NULL
);

CREATE TABLE musician (
Jobtype               VARCHAR(30)                          NOT NULL,
MusicianID            INT                                  PRIMARY KEY,
MusicianName           VARCHAR(20)                         NOT NULL
);

CREATE TABLE Technicalstaff (
StaffID                    INT                             PRIMARY KEY,
Security_Clearance         VARCHAR(19)                     NOT NULL,
Staffname                  VARCHAR(28)                     NOT NULL
);

CREATE TABLE agent_ (
agent_name                  VARCHAR(28)                    NOT NULL,
agent_ID                   INT                             PRIMARY KEY,  
agent_mobnumber            INT                             NOT NULL,
agentjobtypes              VARCHAR(30)                     NOT NULL,
numberofjobs               INT                             NOT NULL
);

CREATE TABLE Venue (
Stagecapacity            INT                               NOT NULL, 
Stagenumber              INT                               PRIMARY KEY,
Stagename                VARCHAR(29)                       NOT NULL
); 



insert into agent_ values ('Ahmed'  ,   2368 ,  01004034455   ,   'pilot', 2  );

insert into agent_ values ( 'Adam'   , 9324 ,   0112843299  ,  'Doctor', 3 );


insert into Band values ('Flames',  9191 , 'Medium' ,'Programmer');

insert into Band values ('Ecstasy',  1919 , 'Medium' ,'Teacher');

insert into Band values ('Big Fish',  3245 ,'Medium' ,'Designer');

insert into Band values ('Mudslide',  3465 ,'Medium' ,'Doctor');

insert into Band values ('Ultraviolet', 9008  ,'Medium' ,'Engineer');



insert into musician values ( 'violin',  8842   ,  'Mahmoud'  );

insert into musician values (  'Piano Tuner', 7724   ,  'Samy'  );

insert into musician values ( 'Songwriter',  6539   ,  'Nour'  );

insert into musician values (  'Producer', 9246   ,  'Tamer'  );

insert into musician values (  'Record', 8638   ,  'Sara'  );

insert into musician values (  'Tape', 4365  ,  'Shahd'  );

insert into musician values ( 'Cassette',  6952   ,  'Asmaa'  );

insert into musician values ( 'CDplayer' , 9855   , 'Abdullah');

insert into musician values (  'MP3 Player' ,3636   ,  'Omar' );

insert into musician values (  'Ukulele', 4246   ,  'Mariam' );

insert into musician values ( 'Harmonica', 9643   ,  'Karim'  );

insert into musician values ('Electronic drums', 1234,'Hanna' );

insert into musician values ( 'Singer', 4321 ,'Mustafa');

insert into musician values ('Auxiliary percussion', 1369 ,'Muhammad');

insert into musician values ('Xylophone'   ,9753   ,  'Hassan'  );

insert into musician values ( 'Drums' , 1840   ,  'Kenzy'  );

insert into musician values ( 'Piano' , 6043   ,  'Mina'  );

insert into musician values ( 'Guitar',  5008   ,  'Hamza'  );

insert into musician values ( 'Flute',  3202   ,  'Youssef'  );

insert into musician values ( 'Trumpet', 2680   ,  'Malak'  );



insert into Technicalstaff values ( 2453 ,'medium', 'The Diplomatic');

insert into Technicalstaff values ( 1948 ,'medium', 'Techness');

insert into Technicalstaff values ( 4672 ,'medium', 'FutureX');

insert into Technicalstaff values ( 6429 ,'medium', 'Coderlieve');

insert into Technicalstaff values ( 5128 ,'medium', 'Appdroid');



insert into Venue values (1000 , 1  ,  'Idol'  );

insert into Venue values (1500 , 2,  'Zelda'  );

insert into Venue values ( 1700 ,3,  'Ambrosia');

insert into Venue values ( 2000 ,4 ,  'Allegra');

insert into Venue values ( 2500 ,5 ,  'Andromeda');

insert into Venue values ( 2700 ,6 ,  'Rio'  );

insert into Venue values (3000 , 7 ,  'talentino');

insert into Venue values ( 3500 ,8 ,  'Helena'  );

insert into Venue values (3700 ,9 ,  'Kismet'  );

insert into Venue values (4000 ,10 , 'Nova'  );



CREATE VIEW agentjobs AS
SELECT agentjobs , numberofjobs
FROM agent_ With read only;
grant select ON agent_ TO -dp15aad;
SELECT * FROM agentjobs;



CREATE or replace TRIGGER delete AFTER DELETE on agent_
FOR EACH ROW BEGIN
    UPDATE tblCountDelete SET countDelete = tblCountDelete.countDelete + 1;
    END;






