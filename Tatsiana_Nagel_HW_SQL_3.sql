--Joins 
--1.Вывести всех работников, чьи зарплаты есть в базе, вместе с зарплатами

select employees.employee_name as name, salary.monthly_salary as salary from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id;

--2. Вывести всех работников у которых ЗП меньше 2000.

select employees.employee_name as name, salary.monthly_salary as salary from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

--3.Вывести все зарплатные позиции, но работник по ним не назначен (ЗП есть, но не понятно кто её получает) 

--1-ый вариант - вывести зп, которую никому не назначили
select salary.monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id
where employee_salary.id is null;

--2-ой вариант- ЗП есть, но не понятно, кто ее получает.
select salary.monthly_salary, employees.employee_name from salary  
left join employee_salary  on salary.id = employee_salary.salary_id
left join employees  on employee_salary.employee_id = employees.id
where employee_name is null;

--4. Вывести все зарплатные позиции меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.) 

--1-ый вариант -  вывести зп, которую никому не назначили  < 2000
select salary.monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000 and employee_salary.id is null;

--2-ой вариант - ЗП есть, но не понятно кто её получает.
select  salary.monthly_salary, employees.employee_name from salary  
left join employee_salary on employee_salary.salary_id = salary.id
left join employees  on employees.id = employee_salary.employee_id
where employee_name is null and monthly_salary<2000;


--5. Найти всех работников кому не начислена ЗП.

select employees.employee_name, salary_id from employees
left join employee_salary on employees.id = employee_salary.employee_id
where employee_salary.salary_id is null;

--6. Вывести всех работников с названиями их должности. 

select employee_name as name, role_name as role from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id;

--7. Вывести имена и должность только Java разработчиков. 

select employee_name as name, role_name as role_Java from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java%'and role_name not like '%JavaScript%';

--8. Вывести имена и должность только Python разработчиков. 

select employee_name as name, role_name as Python from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python%';

--9. Вывести имена и должность всех QA инженеров.

select employee_name as name, role_name as QA from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%'; 

select * from roles;

--10. Вывести имена и должность ручных QA инженеров. 

select employee_name as name, role_name as manual_QA from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Manual_QA%';

--11. Вывести имена и должность автоматизаторов QA 

select employee_name as name, role_name as automation_QA from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Automation_QA%';

--12. Вывести имена и зарплаты Junior специалистов 

select employees.employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов 

select employees.employee_name, salary.monthly_salary, roles.role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов 

select employees.employee_name, salary.monthly_salary, roles.role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков 

select salary.monthly_salary from salary
join employee_salary es on es.salary_id = salary.id
join employees on es.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java_developer';

--16. Вывести зарплаты Python разработчиков 

select employees.employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков 

select employees.employee_name, monthly_salary, role_name from employees
join employee_salary es on es.employee_id = employees.id
join salary on es.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior_Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков

select employees.employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%JavaS%';

--19. Вывести имена и зарплаты Senior Java разработчиков

select employees.employee_name, monthly_salary, role_name from employees
right join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Senior%Java_developer';

--20. Вывести зарплаты Junior QA инженеров 

select employees.employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%QA%';

--21. Вывести среднюю зарплату всех Junior специалистов

select avg(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';



--22. Вывести сумму зарплат JS разработчиков 

select sum(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%JavaS%';


--23. Вывести минимальную ЗП QA инженеров

select min(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

--25. Вывести количество QA инженеров

select count(*) from roles
join roles_employee  on roles.id = roles_employee.role_id
where role_name like '%QA%';

--26. Вывести количество Middle специалистов. 

select count(*) from roles
join roles_employee  on roles.id = roles_employee.role_id
where role_name like '%Middle%';

--27. Вывести количество разработчиков 

select count(*) from roles
join roles_employee  on roles.id = roles_employee.role_id
where role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков. 

select sum(monthly_salary) from salary
join employee_salary es on es.salary_id = salary.id
join employees on es.employee_id = employees.id
join roles_employee re on employees.id = re.employee_id
join roles on re.role_id = roles.id
where role_name like '%developer%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию 

select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
order by monthly_salary asc;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов, у которых ЗП от 1700 до 2300

select employees.employee_name, roles.role_name, salary.monthly_salary  from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary between 1700 and 2300 
order by salary.monthly_salary asc;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов, у которых ЗП меньше 2300 

select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where monthly_salary < 2300 
order by monthly_salary asc;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов, у которых ЗП равна 1100, 1500, 2000

select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where monthly_salary in(1100,1500,2000) 
order by monthly_salary asc;


select * from roles;
select * from salary;
select * from employees;
select * from roles_employee;
select * from employee_salary;

