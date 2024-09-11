use bank;

select fname, lname, name
from officer, business
where officer.cust_id = business.cust_id;

select account_id as "Account ID", account.cust_id as "Customer ID", CONCAT(fname, ' ', lname) Name, city as "City", avail_balance as "Balance"
from account, customer, individual
where status = 'ACTIVE' AND avail_balance > 2500
AND account.cust_id = customer.cust_id AND customer.cust_id = individual.cust_id;

select d.name, count(e.emp_id) num_employees
from department d, employee e
where d.dept_id = e.dept_id
group by d.name;

select d.name, min(e.start_date), CONCAT(e.fname, ' ', e.lname)name
from department d, employee e
where e.dept_id = d.dept_id
group by d.name;

