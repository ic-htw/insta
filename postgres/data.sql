copy orders from '/var/lib/postgresql/db/instacart/orders.csv' delimiter ',' csv header;

copy order_products__prior from '/var/lib/postgresql/db/instacart/order_products__prior.csv' delimiter ',' csv header;

copy submission from '/var/lib/postgresql/db/instacart/sample_submission.csv' delimiter ',' csv header;
