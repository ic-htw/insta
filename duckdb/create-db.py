import duckdb
con = duckdb.connect(database='insta.duckdb', read_only=False)

sql = """
--drop table submission;
--drop table order_products__prior;
--drop table orders;
"""
# con.execute(sql)

# -------------------------------------------------
# submission
# -------------------------------------------------
sql = """
create  table submission (
  order_id integer not null primary key,
  dummy varchar(50)
);
"""
con.execute(sql)

sql = """
insert into submission
  select * from read_csv_auto('../csv/sample_submission.csv');
"""
con.execute(sql)


# -------------------------------------------------
# orders
# -------------------------------------------------
sql = """
create  table orders (
  order_id integer not null primary key,
  user_id varchar(100) not null,
  eval_set varchar(5) not null,
  order_number integer not null,
  order_dow integer not null,
  order_hour_of_day integer not null,
  days_since_prior_order float
);
"""
con.execute(sql)

sql = """
insert into orders
  select * from read_csv_auto('../csv/orders.csv');
"""
con.execute(sql)

# -------------------------------------------------
# order_products__prior
# -------------------------------------------------
sql = """
create  table order_products__prior (
  order_id integer not null,
  product_id integer not null,
  add_to_cart_order integer not null,
  reordered integer not null
);
"""
con.execute(sql)

sql = """
insert into order_products__prior
  select * from read_csv_auto('../csv/order_products__prior.csv');
"""
con.execute(sql)

sql = """
alter table order_products__prior
    add constraint fk1 foreign key (order_id) references orders (order_id);
"""


print("ok")