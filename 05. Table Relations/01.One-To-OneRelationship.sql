CREATE TABLE Persons(
	PersonID INT NOT NULL,
	FirstName NVARCHAR(30),
	Salary MONEY,
	PassportID INT NOT NULL
)
CREATE TABLE Passports(
	PassportID INT NOT NULL,
	PasspordNumber NVARCHAR(50) NOT NULL UNIQUE
)

INSERT INTO Persons VALUES
	(1, 'Roberto', 43330.00, 102),
    (2, 'Tom', 56100.00, 103),
    (3, 'Yana', 60200.00, 101)

INSERT INTO Passports VALUES
	(101, 'N34FG21B'), 
	(102, 'K65LO4R7'), 
	(103, 'ZE657QP2')

ALTER TABLE Persons
ADD CONSTRAINT PK_Persons PRIMARY KEY (PersonID)

ALTER TABLE Passports
ADD CONSTRAINT PK_Passports PRIMARY KEY (PassportID)

ALTER TABLE Persons
ADD CONSTRAINT FK_Persons_Passports FOREIGN KEY (PassportID) REFERENCES Passports(PassportID)