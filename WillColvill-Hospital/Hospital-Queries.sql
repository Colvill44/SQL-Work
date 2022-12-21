select * from record;
select * from instructions;
select * from nurse;
select * from patient;
select * from payment;
select * from physician;
select * from record;
select * from medication;

select name, phone
from patient
where name like "J%";

select patient_id
from instructions
where date like "%21";

select patient_id
from payment
where amount > 100.00;

select patient.phone
from patient join medication on patient.patient_id = medication.patient_id
where medication.type = 'valium';

select nurse.certnum
from nurse join medication on nurse.nurse_id = medication.nurse_id
where medication.type = 'valium';

select patient.name, patient.address, patient.phone
from patient join record on patient.patient_id = record.patient_id
where disease = 'Cancer';

select sum(payment.amount) as total_trans_over_100
from payment
where amount > 100.00;

select max(payment.amount) as highest_cost
from payment;

select count(physician.name) as names_start_k
from physician
where name like 'K%';

select name
from patient
where patient_id = (select patient_id
					from instructions
                    where fee = 500.00);
                    
select name, phone
from patient
where patient_id = (select patient_id
					from instructions
                    where physician_id = 3);
                    
select avg(amount)
from payment
where exists(select patient_id
						from instructions
                        where physician_id > 2);