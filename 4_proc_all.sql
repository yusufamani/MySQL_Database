Delimiter $
create procedure acc_info(IN SSN char(9))
begin
SELECT		c.name, o.accNum, s.balance
FROM		customerView as c, owns as o, savingView as s
WHERE		c.taxPayerId = o.taxPayerId AND o.accNum = s.accNum AND o.taxPayerId = SSN;
end $
Delimiter ;
