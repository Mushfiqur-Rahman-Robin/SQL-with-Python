import sqlite3
from employee import Employee

conn = sqlite3.connect('employee.db')
#conn = sqlite3.connect(':memory:')

c = conn.cursor()

# c.execute('''CREATE TABLE employees (
#         firstname text,
#         lastname text,
#         pay integer
#         )''')


def insert_emp(emp):
    with conn:
        c.execute("INSERT INTO employees VALUES (:first, :last, :pay)", {'first': emp.first, 'last': emp.last, 'pay': emp.pay})


def get_emps_by_name(lastname):
    c.execute("SELECT * FROM employees WHERE last=:last", {'last': lastname})
    return c.fetchall()


def update_pay(emp, pay):
    with conn:
        c.execute("""UPDATE employees SET pay = :pay
                    WHERE first = :first AND last = :last""",
                  {'first': emp.first, 'last': emp.last, 'pay': pay})


def remove_emp(emp):
    with conn:
        c.execute("DELETE from employees WHERE first = :first AND last = :last",
                  {'first': emp.first, 'last': emp.last})

#c.execute("INSERT INTO employees VALUES('Known', 'User', 5000)")
#conn.commit()

# c.execute("SELECT * FROM employees WHERE lastname = 'User'")
# print(c.fetchall())

emp_1 = Employee('John', 'Doe', 20000)
emp_2 = Employee('Jane', 'Doe', 25000)

# c.execute("INSERT INTO employees VALUES (?,?,?)", (emp_1.first, emp_1.last, emp_1.pay))
# conn.commit()

# c.execute("INSERT INTO employees VALUES (:first, :last, :pay)", {'first' : emp_2.first, 'last' : emp_2.last, 'pay' : emp_2.pay})
# conn.commit()

# print(emp_1.first)
# print(emp_1.last)
# print(emp_1.pay)

# # c.execute("SELECT * FROM employees WHERE lastname = 'Doe'")
# # print(c.fetchall())

# c.execute("SELECT * FROM employees WHERE lastname = ?", ('Schafer',))
# print(c.fetchall())

# c.execute("SELECT * FROM employees WHERE lastname = :last", {'last' : 'Doe'})
# print(c.fetchall())


insert_emp(emp_1)
insert_emp(emp_2)

emps = get_emps_by_name('Doe')
print(emps)

update_pay(emp_2, 15000)
 
remove_emp(emp_1)

emps = get_emps_by_name('Doe')
print(emps)


conn.close()