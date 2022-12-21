select name
from Person
where gender = 'male' and age > 18;

select name
from Person
where gender = 'female' and age >= 30;

select name
from Person
where gender = 'male' and age > 20 and name = any(select name
from Eats
where pizza = 'cheese');

select distinct pizzeria
from Serves
where pizzeria not in (select pizzeria
from Serves
where price >= 9);

select distinct pizzeria
from Serves
where pizzeria not in (select pizzeria
from Serves
where price < 9);

select p.name, e.pizza, s.price
from Person p join Eats e join Serves s on p.name = e.name and e.pizza = s.pizza
where p.gender = 'female' and p.age > 20 and price > 9;

select pizza
from serves
where price > 9 and pizza in (select pizza
from person join eats on person.name = eats.name
where gender = 'female' and age > 20);

select distinct name
from eats e join serves s on e.pizza = s.pizza
where s.pizzeria = 'Dominos' and name not in(select name
from frequents
where pizzeria = 'Dominos');

select distinct pizza
from eats
where pizza not in (select pizza
from eats e join person p on p.name = e.name
where p.age >= 24);