insert into Person values ('111111111','Yusuf', '101 Lions wy Folsom CA');
insert into Person values ('999999999','Joe', '109 Lions wy, Folsom CA');
insert into Person values ('123456789','Will', '105 Lions wy, Folsom CA');
insert into Person values ('666666666', 'David', '106 Lions wy, Folsom CA');
insert into Person values ('333333333','Jill', '103 Lions wy, Folsom CA');
insert into Person values ('888888888', 'Mara', '108 Lions wy, Folsom CA');
insert into Person values ('222222222', 'Tess', '102 Lions wy, Folsom CA');
insert into Person values ('444444444', 'Rita', '104 Lions wy, Folsom CA');

insert into Employee values ('123456789', 'Manager','35000');			#will-emp   #was 55555555
insert into Employee values ('666666666', 'Supervisor', '30000');		#david-emp
insert into Employee values ('333333333', 'Teller', '20000');			#jill-emp
insert into Employee values ('444444444', 'Teller', '20000');			#rita-emp


insert into Customer values ('111111111', '2002');		#yusuf-cus
insert into Customer values ('999999999', '1970');		#joe-cus
insert into Customer values ('888888888', '1980');		#mara -cus
insert into Customer values ('222222222', '1982');		#tess -cus
insert into Customer values ('123456789', '2002');		#will-cus/emp
insert into Customer values ('666666666', '1970');		#david-cus/emp
insert into Customer values ('333333333', '2003');		#jill-cus/emp
insert into Customer values ('444444444', '2004');		#Rita-cus/emp

insert into Account values ('111777111', 'c', '500');	#yusuf-c
insert into Account values ('123456789', 's', '1000');  #will-s
insert into Account values ('999777999', 'c', '5000');	#joe-s
insert into Account values ('666777666', 's', '10000');  #david-c

insert into Owns values ('111111111', '111777111');		#yusuf-c-cus 
insert into Owns values ('123456789', '123456789');		#Will-s-emp
insert into Owns values ('999999999', '999777999');		#joe-s- cus
insert into Owns values ('666666666', '666777666');		#david-c-emp

insert into Checking values ('111777111', '62');		#yusuf-c-cus 
insert into Checking values ('666777666', '66');		#david-c-emp

insert into Saving values ('123456789', '4');			#Will-s-emp
insert into Saving values ('999777999', '4');			#joe-s- cus

insert into Acc_transaction values ('111777111','2019-10-17','01:14:52','40','withdraw');	#yusuf-withdraw
insert into Acc_transaction values ('123456789','2019-10-17','01:13:15','20','deposit');	#will-deposit 
insert into Acc_transaction values ('123456789','2019-10-16','05:50:20','20','withdraw');	#will-deposit 

insert into Loan values ('888000888', '3333');			#mara-cus-bor-loan
insert into Loan values ('333000333', '6666');			#jill-cus/emp-bor-loan
insert into Loan values ('222000222', '6363');			#tess-cus-bor-loan
insert into Loan values ('444000444', '3636');			#rita-cus/emp-bor-loan

insert into Borrow values ('888888888', '888000888');	#mara-cus-bor
insert into Borrow values ('333333333', '333000333');	#jill-cus/emp-bor
insert into Borrow values ('222222222', '222000222');	#tess-cus-bor
insert into Borrow values ('444444444', '444000444');	#rita-cus-emp-bor