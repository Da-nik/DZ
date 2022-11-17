/*Что нужно сделать
В этот раз Вам не повезло…
На Вас вышел отдел сопровождения баз данных.
Они хотят, чтобы Вы немного поправили код, поэтому они выкатили список требований к запросам, 
которые надо сделать, чтобы они установили программы в боевую среду.*/

--1)Выберите сумму зарплат по отделам из таблицы сотрудников и преобразуйте полученное значение в строку с денежной маской.
select department_id,
to_char(sum(salary)) as txt
from HR.employees
group by department_id;

--2)Преобразуйте дату найма сотрудников из таблицы сотрудников до первого января года найма.
select trunc(hire_date, 'yyyy')
from HR.employees;

--3)Отдельным запросом преобразуйте полученные значения в задании 2 в текст со значением года.
select to_char(trunc(hire_date, 'yyyy'),'yyyy' ) year
from HR.employees;

--4)Отдельным запросом преобразуйте полученные значения в задании 2 в число со значением года.
select to_number(to_char(hire_date, 'yyyy')) num_ber
from HR.employees;

--5)Вычислите минимальный, максимальный и средний годы найма из данных задания 2.
select max(to_number(to_char(hire_date, 'yyyy'))) as maximum,
min(to_number(to_char(hire_date, 'yyyy'))) as minimum,
avg(to_number(to_char(hire_date, 'yyyy'))) as srednee
from hr.employees;

/*6)Создайте таблицу hurricane (Справочник ураганов) с полями: name - текст на 64 символа 
(Наименование), report_year - дата (Год, в который приходил ураган), victims - число (Количество жертв).*/
create table  hurricane(name varchar2(64),report_year date,victims number);

--7) Наложить на поле наименования урагана ограничение использования метки null.
alter table  hurricane MODIFY name not null;

--8)Очистить таблицу ураганов функцией truncate.
truncate table hurricane;

--9)Удалить таблицу ураганов.
drop table  hurricane;
