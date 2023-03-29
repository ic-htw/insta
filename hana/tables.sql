drop table order_products__prior;
drop table orders;
drop table submission;

create column table aisles (
  aisle_id integer not null primary key,
  aisle varchar(100)
);

create column table orders (
  order_id integer not null primary key,
  user_id varchar(100) not null,
  eval_set varchar(5) not null,
  order_number integer not null,
  order_dow integer not null,
  order_hour_of_day integer not null,
  days_since_prior_order integer
);

create column table order_products__prior (
  order_id integer not null,
  product_id integer not null,
  add_to_cart_order integer not null,
  reordered integer not null
);

create column table submission (
  order_id integer not null primary key
);


alter table order_products__prior
    add constraint fk1 foreign key (order_id) references orders (order_id);

create btree index i1 on order_products__prior (order_id);
