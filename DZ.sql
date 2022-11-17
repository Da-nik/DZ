/*��� ����� �������
� ���� ��� ��� �� �������
�� ��� ����� ����� ������������� ��� ������.
��� �����, ����� �� ������� ��������� ���, ������� ��� �������� ������ ���������� � ��������, 
������� ���� �������, ����� ��� ���������� ��������� � ������ �����.*/

--1)�������� ����� ������� �� ������� �� ������� ����������� � ������������ ���������� �������� � ������ � �������� ������.
select department_id,
to_char(sum(salary)) as txt
from HR.employees
group by department_id;

--2)������������ ���� ����� ����������� �� ������� ����������� �� ������� ������ ���� �����.
select trunc(hire_date, 'yyyy')
from HR.employees;

--3)��������� �������� ������������ ���������� �������� � ������� 2 � ����� �� ��������� ����.
select to_char(trunc(hire_date, 'yyyy'),'yyyy' ) year
from HR.employees;

--4)��������� �������� ������������ ���������� �������� � ������� 2 � ����� �� ��������� ����.
select to_number(to_char(hire_date, 'yyyy')) num_ber
from HR.employees;

--5)��������� �����������, ������������ � ������� ���� ����� �� ������ ������� 2.
select max(to_number(to_char(hire_date, 'yyyy'))) as maximum,
min(to_number(to_char(hire_date, 'yyyy'))) as minimum,
avg(to_number(to_char(hire_date, 'yyyy'))) as srednee
from hr.employees;

/*6)�������� ������� hurricane (���������� ��������) � ������: name - ����� �� 64 ������� 
(������������), report_year - ���� (���, � ������� �������� ������), victims - ����� (���������� �����).*/
create table  hurricane(name varchar2(64),report_year date,victims number);

--7) �������� �� ���� ������������ ������� ����������� ������������� ����� null.
alter table  hurricane MODIFY name not null;

--8)�������� ������� �������� �������� truncate.
truncate table hurricane;

--9)������� ������� ��������.
drop table  hurricane;
