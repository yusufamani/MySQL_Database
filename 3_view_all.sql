create view empLoan as
SELECT	e.taxPayerId, e.name, e.salary
FROM 	employeeView as e, Borrow as b 
WHERE	e.taxPayerId = b.taxPayerId;

create view ownCheckingAcc as
SELECT	c.taxPayerId, c.name, c.sinceYear
FROM	customerView as c, owns as o, checking as ch
WHERE 	c.taxPayerId = o.taxPayerId AND o.accNum = ch.accNum;