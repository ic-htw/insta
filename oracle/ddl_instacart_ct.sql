create table orders (
  order_id integer not null primary key,
  user_id varchar2(100) not null,
  eval_set varchar2(5) not null,
  order_number integer not null,
  order_dow integer not null,
  order_hour_of_day integer not null,
  days_since_prior_order integer
);

create table order_products__prior (
  order_id integer not null,
  product_id integer not null,
  add_to_cart_order integer not null,
  reordered integer not null
);

create table submission (
  order_id integer not null primary key
);


alter table order_products__prior
    add constraint fk1 foreign key (order_id) references orders (order_id);

create index i1 on order_products__prior (order_id);
