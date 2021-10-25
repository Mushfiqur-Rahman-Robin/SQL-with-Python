import pandas as pd
from pandasql import sqldf
from pandasql import load_births


births = load_births()
#print(births)

# print(sqldf("select * from births where births > 250000 limit 5"))

q = """
      select
        date(date) as DOB,
        sum(births) as "Total Births"
      from
        births
      group by
        date
        limit 10;  
"""

# print(sqldf(q))

dfcustomer = pd.read_csv(r'C:\Users\USER\Desktop\Project\python_sql\Dataset\DimCustomer.csv')
print(dfcustomer.head(5))

dfcustomer.set_index('CustomerKey', inplace = True)
print(dfcustomer.head())

#print(dfcustomer.dtypes)

print(sqldf('''SELECT EmailAddress, Phone, CommuteDistance as "Distance"
from dfcustomer
ORDER BY Distance 
limit 5  '''))

dfinternetsales = pd.read_csv(r'C:\Users\USER\Desktop\Project\python_sql\Dataset\FactInternetSales.csv')
print(dfinternetsales)

# Joining dataframes with SQL

query = '''select * 
           from dfcustomer c
           left join dfinternetsales s
                on (c.CustomerKey = s.CustomerKey) limit 5'''

print(sqldf(query))


