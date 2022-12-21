select count(*) as Total_deposits
from transaction
where type = 'Deposit';

select *
from transaction
where tdate between '2019-09-01' and '2019-09-30' and account_num = '1111222233331441';

select sum(amount) as Balance, account_num
from transaction
where account_num = '1111222233331441';

select c.name, t.amount
from customer c join account a on c.ssn = a.owner_ssn join transaction t on a.number = t.account_num
order by t.amount desc limit 1;

select c.name
from customer c join account a on c.ssn = a.owner_ssn
where c.sex = 'M' and a.type = 'Checking';

select c.name, a.number as Felixs_Accounts, a.type
from account a left join customer c on a.owner_ssn = c.ssn
where name = 'Alexander Felix';

select a.number, a.type, sum(amount) as Balance
from customer c join account a on c.ssn = a.owner_ssn join transaction t on a.number = t.account_num
where c.name = 'Alexander Felix' and a.type = 'Checking'
union
select a.number, a.type, sum(amount) as Balance
from customer c join account a on c.ssn = a.owner_ssn join transaction t on a.number = t.account_num
where c.name = 'Alexander Felix' and a.type = 'Saving';

select c.name
from customer c join account a on c.ssn = a.owner_ssn join transaction t on a.number = t.account_num
where amount >= 1000;

select name
from customer 
where ssn in (select owner_ssn
				from account
                where number in (select account_num
									from transaction t
									where t.amount >= 1000));
                                    
select name
from customer c join account a on c.ssn = a.owner_ssn join transaction t on a.number = t.account_num
where t.type = 'Deposit'
group by name
having count(account_num) >= 2;