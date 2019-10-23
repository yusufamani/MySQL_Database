

Delimiter $
create function get_no_of_tran(inputAccNum char(9))
returns int
begin
	DECLARE	numCountTrans int;
	SELECT	count(*) into numCountTrans
	FROM	Acc_transaction as t
	WHERE	t.AccNum = inputAccNum;
	return  numCountTrans;
end $
Delimiter ;

SET GLOBAL log_bin_trust_function_creators = 1;