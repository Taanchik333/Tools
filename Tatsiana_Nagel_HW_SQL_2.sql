--Создать таблицу employees
create table employees (
id serial primary key,
employee_name varchar (50) not null
);
select * from employees;

--Наполнить таблицу employee 70 строками
insert into employees(employee_name)
values
('William_Martinez'),
('Julie_Stephens'),
('Robert_Garcia'),
('Kathy_Stewart'),
('Glen_Thornton'),
('Mark_Williamson'),
('Leona_Armstrong'),
('Arthur_Jones'),
('Denise_Mack'),
('Pamela_Campbell'),
('Calvin_Warren'),
('Melissa_Morales'),
('Nancy_Watson'),
('Randy_Jones'),
('Russell_Hicks'),
('Margaret_Moore'),
('Mark_Armstrong'),
('Amanda_Burton'),
('Phillip_Rodriguez'),
('Ruth_Hollandn'),
('Valerie_Baker'),
('Roy_Wheeler'),
('George_Taylor'),
('Dorothy_Flores'),
('Michael_Norris'),
('Mary_Andrews'),
('Mary_Duncan'),
('Marjorie_West'),
('Kathleen_Welch'),
('Stephen_Wagner'),
('Ruben_Coleman'),
('David_Harris'),
('Deborah_Christensen'),
('Audrey_Ford'),
('Louise_Johnson'),
('Laura_Allen'),
('Lawrence_Wright'),
('Mary_Sanders'),
('Joyce_Davis'),
('Michael_Sims'),
('Patricia_McKinney'),
('Wanda_Griffith'),
('Clifford_Hughes'),
('Elizabeth_Sanchez'),
('Barbara_Malone'),
('Neil_Greer'),
('Janice_Wright'),
('Bryan_Curry'),
('Steven_Williams'),
('Dorothy_Peterson'),
('Sylvia_Simmons'),
('Mark_Rice'),
('Nicole_Edwards'),
('William_Lane'),
('Nancy_Sparks'),
('Jeffrey_Ray'),
('Eva_Wells'),
('Michael_Lamert'),
('Jamie_Drake'),
('Heather_Armstrong'),
('Wendy_Turner'),
('Norman_Byrd'),
('Lisa_Medina'),
('Joshua_Turner'),
('Tammy_Meyer'),
('Jacob_Mathis'),
('Andrea_Hughes'),
('Christopher_Turner'),
('Michael_Cook');

insert into employees(employee_name)
values ('Alex_Bach');

--Создать таблицу salary
create table salary (
id serial primary key,
monthly_salary int not null
);

select * from salary;

--Заполнить таблицу salary 15 строками
insert into salary(monthly_salary)
values
('1000'),
('1100'),
('1200'),
('1300'),
('1400'),
('1500'),
('1600'),
('1700'),
('1800'),
('1900'),
('2000'),
('2100'),
('2200'),
('2300'),
('2400'),
('2500');

--Создать таблицу employee_salary
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

select * from employee_salary;

--Наполнить таблицу employee_salary 40 строками:в 10 строках из 40 втавить несуществующие employee_id

insert into employee_salary(employee_id, salary_id) values 
(20, 5),
(2, 9),
(30, 1),
(25, 3),
(21, 8),
(80, 4),
(35, 5),
(78, 15),
(5, 16),
(36, 8),
(15, 11),
(27, 10),
(37, 13),
(47, 14),
(57, 16),
(65, 5),
(75, 9),
(3, 7),
(6, 6),
(16, 8),
(17, 13),
(38, 15),
(73, 3),
(45, 7),
(44, 2),
(46, 1),
(53, 7),
(76, 9),
(8, 5),
(10, 15),
(11, 4),
(82, 3),
(63, 7),
(39, 5),
(91, 12),
(89, 12),
(71, 14),
(94, 11),
(22, 4),
(55, 6);

--Создать таблицу roles
create table roles(
id serial primary key,
role_name int not null unique
);

select * from roles;

--Поменять тип столбца role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

--Наполнить таблицу roles 20 строками
insert into roles(role_name)
values
('Junior_Python_developer'),
('Middle_Python_developer'),
('Senior_Python_developer'),
('Junior_Java_developer'),
('Middle_Java_developer'),
('Senior_Java_developer'),
('Junior_JavaScript_developer'),
('Middle_JavaScript_developer'),
('Senior_JavaScript_developer'),
('Junior_Manual_QA_engineer'),
('Middle_Manual_QA_engineer'),
('Senior_Manual_QA_engineer'),
('Project_Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales_manager'),
('Junior_Automation_QA_engineer'),
('Middle_Automation_QA_engineer'),
('Senior_Automation_QA_engineer');

--Создать таблицу roles_employee
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
	 foreign key (employee_id)
     references employees(id),
     foreign key (role_id)
     references roles(id)
);

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values 
(21,6),
(11,5),
(31,4),
(45,3),
(70,2),
(1,1),
(5,11),
(6,10),
(15,9),
(16,8),
(8,7),
(18,20),
(19,15),
(20,19),
(47,14),
(46,18),
(27,13),
(51,17),
(61,12),
(34,16),
(38,11),
(63,9),
(67,7),
(14,5),
(24,13),
(29,15),
(33,17),
(53,19),
(57,1),
(13,2),
(48,4),
(26,6),
(41,8),
(9,10),
(3,11),
(7,18),
(17,3),
(59,5),
(23,7),
(32,6);

select * from roles_employee;
