-- Q.7 List the employees along with thier department--
select e1.emp_name as [Employees name], d.department as[Dapartment]
 from tbl_employees  e1
 left join tbl_employees  d
 on e1.emp_name=d.emp_name;