copy orders from '/var/lib/postgresql/data/csv/insta/orders.csv' delimiter ',' csv header;

copy order_products__prior from '/var/lib/postgresql/data/csv/insta/order_products__prior.csv' delimiter ',' csv header;

copy submission from '/var/lib/postgresql/data/csv/insta/sample_submission.csv' delimiter ',' csv header;
