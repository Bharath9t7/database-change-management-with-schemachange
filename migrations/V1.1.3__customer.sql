use schema demo;

create table demo_db.demo.customers 
( id integer,
  first_name varchar,
  last_name varchar
);

copy into demo_db.demo.customers (id, first_name, last_name)
from 's3://dbt-tutorial-public/jaffle_shop_customers.csv'
file_format = (
  type = 'CSV'
  field_delimiter = ','
  skip_header = 1
  );