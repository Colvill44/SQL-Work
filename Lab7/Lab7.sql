INSERT INTO users VALUES (1,'saraa.riazi@gmail.com', 'Sara', 'Riazi');
INSERT INTO users VALUES (2,'johnsmith@gmail.com', 'John', 'Smith');
INSERT INTO users (email_address,first_name,last_name) 
VALUES ('janedoe@yahoo.com', 'Jane', 'Doe');
select *
from users;
insert into products values (1, 'Local Music Vol. 1');
insert into products values (2, 'Local Music Vol. 2');
select * from products;
insert into users (email_address, first_name)
values ('jackbown@msn.com', 'Jack');
select * from users;
INSERT INTO downloads VALUES (1, 1, NOW(), 'pedals_are_falling.mp3', 1),
 (2, 2, NOW(), 'turn_signal.mp3', 1),
 (3, 2, NOW(), 'one_horse_town.mp3', 2);
select * from downloads;
update users
set email_address = 'john.smith@yahoo.com'
where user_id = 2;
DELETE FROM users WHERE user_id=1;
delete from downloads where user_id=2;
