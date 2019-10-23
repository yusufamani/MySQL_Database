Create table Person
(
	taxPayerId	char(9),
    name		varchar(10),
    Paddress    varchar(100),
    PRIMARY KEY (taxPayerId)
);

Create table Customer
(
	taxPayerID	char(9),
    sinceYear   char(4),
    primary key (taxPayerId),
    foreign key (taxPayerId) references Person(taxPayerId)
);

Create table Employee
(
	taxPayerId	char(9),
    title		varchar(20),
	salary		int,
    primary key (taxPayerId),
    foreign key (taxPayerId) references Person(taxPayerId)
);

Create table Account 
(
	accNum		char(9),
    type		char(1),
    balance		int,
	primary key (accNum)
);

create table Owns
(
	taxPayerId	char(9),
    accNum		char(9),
    primary key (taxPayerId, accNum),
    foreign key (taxPayerId) references Customer(taxPayerId),
    foreign key (accNum) references Account(accNum)
);

create table Checking
(
	accNum 			char(9),
    noFreeChecks 	int,
    primary key (accNum),
    foreign key (accNum) references Account(accNum)
);

create table Saving
(
	accNum		char(9),
    intRate		int,
    primary key (accNum),
    foreign key (accNum) references Account(accNum)
);

create table Loan
(
	LoanNo		char(9),
    amount		int,
    PRIMARY KEY (LoanNo)
);

create table Borrow
(
	taxPayerId	char(9),
    LoanNo		char(9),
    PRIMARY KEY (taxPayerId, LoanNo),
    foreign key (taxPayerId) references Customer(taxPayerId),
    foreign key (LoanNo) references Loan(LoanNo)
);

create table Acc_Transaction
(
	accNum	char(9),
    tDate	DATE,
    tTime	TIME, 
    amount	int, 
    type	varchar(10),
    PRIMARY KEY (accNum, tDate, tTime),
    foreign key (accNum) references Account (accNum) 
);

create view employeeView as
Select	p.taxPayerId, p.name, p.paddress, e.title, e.salary
From	Employee as e, Person as p
Where	e.taxPayerId = p.taxPayerId;

create view customerView as
Select	p.taxPayerId, p.name, p.paddress, c.sinceYear
From	Customer as c, Person as p
Where	c.taxPayerId = p.taxPayerId;

create view checkingView as
Select	a.accNum, a.type, a.balance, c.noFreeChecks
From 	Account as a, Checking as c
Where	a.accNum = c.accNum;

create view savingView as 
Select	a.accNum, a.type, a.balance, s.intRate
From	Account as a, Saving as s
Where	a.accNum = s.accNum;