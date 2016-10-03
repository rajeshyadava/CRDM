
use CRDM
CREATE TABLE Person 
(PersonID int,
TaxID varchar(20),
UID	Varchar(20),
FirstName varchar(50),
LastName varchar(50),
EmailID varchar(200),
Phone1 varchar(20),
Phone2 Varchar(20),
Address Varchar(2000),
City   Varchar(50),
State Varchar(50),
Country Varchar(20),
CONSTRAINT pk_PersonID PRIMARY KEY (PersonID)
)
GO
Select * from Person
--Alter Table Person Create Constraint Primary key(
