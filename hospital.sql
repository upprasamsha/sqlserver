create database hospital
use hospital

create table patient(
pId int identity(1,1) primary key,
pName varchar(50),
pAge int,
pGender varchar(20),
pPhone varchar(10),
pDisease varchar(20),
)

insert into patient( pName, pAge, pGender, pPhone, pDisease)
values(
'Sajal', 12, 'Male', '9848841288', 'cut'
)
insert into patient( pName, pAge, pGender, pPhone, pDisease)
values

( 'Palistha', 20, 'Female', '9841526903', 'Cancer'),
( 'Ramesh', 25, 'Male', '9841223403', 'Accident'),
( 'Asmi', 3, 'Female', '9841234578', 'Cough and cold'),
( 'Suresh', 39, 'Male', '9847893403', 'Pneumonia')

 select * from patient

create table doctor(
dId int identity(101,1) primary key,
dName varchar(50),
dSpeciality varchar(30),
dGender varchar(20),
)

insert into doctor(dName, dSpeciality, dGender)
values

( 'Shruti', 'Cancer specialist' , 'Female'),
('Ashish', 'ENT specialist', 'Male')

 select * from doctor

create table billing(
pId int primary key,
pServicefees int,
pMedicinefees int,
)
insert into billing(pId, pName, pServicefees, pMedicinefees)
values
(1, 'Sajal',  100,  500),
(2, 'Palistha', 2000, 10000),
(3, 'Ramesh', 500, 1000),
(4, 'Asmi', 100, 100),
(5, 'Suresh', 500, 1500)


select * from billing

create table Room(
pId int primary key,
pDisease varchar(20),
dId int,
)
insert into Room(pId, pDisease, dId)
values
(1,  'Cut', 101),
(2, 'Cancer', 102),
(3, 'Accident', 101)
(4, 'Coughand cold', 101),
(5, 'Pneumonia', 102)

create table prescription(
pId int foreign key references patient(pId),
Medicine varchar(500),
Remarks varchar(200),
)





insert into prescription(pId, Medicine, Remarks)
values
(1, 'fdhfhjdh', 'twicw a day', CURRENT_TIMESTAMP)

alter table prescription add medicine2 varchar(20)

update prescription set Medicine2 ='abc' where Medicine='Florene'

update prescription set Medicine2 ='abc' where pId=1

select * from prescription


