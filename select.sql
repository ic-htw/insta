select count(*) from submission; -- 75000
select count(*) from orders; -- 3.421.083
select count(*) from order_products__prior; -- 32.434.489


select * from vsubmission order by order_id;

select count(*) from vsubmission;

select count(*) from orders where eval_set = 'prior';
select count(*) from prior_orders_of_test_users;
select count(*) from prior_orders_3_of_test_users;
select count(*) from user_products;
select count(*) from testorders_products;
select count(*) from prior_orders_of_test_users;





select * from submission order by order_id;
select * from orders order by order_id;
select * from order_products__prior by order_id, product_id;

select count(*) from vsubmission;
select * from vsubmission order by order_id;
select * from vsubmission where order_id=2774568; 

select * from vsubmission where order_id in (2297, 9318, 9503, 12745,  13787);



Oracle
select * from (select * from submission order by order_id) where rownum <= 10;
select * from (select * from orders order by order_id) where rownum <= 10;
select * from (select * from order_products__prior order by order_id, product_id) where rownum <= 10;
select * from (select * from vsubmission) where rownum <= 10;


Hana
select top 10 * from submission order by order_id;
select top 10 * from orders order by order_id;
select top 10 * from order_products__prior order by order_id, product_id;
select count(*) from vsubmission;
select top 10 *  from vsubmission;


select count(*) from vsubmission;
oracle: 30000 ms
hana  :     2 ms

select * from vsubmission where order_id=2774568; 
oracle:  80 ms
hana  : 680 ms

select * from vsubmission where order_id in (2297, 9318, 9503, 12745,  13787);
oracle: 10000 ms
hana  :   750 ms

select * from (select * from vsubmission) where rownum <= 10;
select top 10 *  from vsubmission;
oracle: 30000 ms
hana  :     2 ms

select sum(reordered) from order_products__prior;
oracle: 2700 ms
hana  :  120 ms

select sum(order_dow) from orders;
oracle: 2700 ms
hana  :  120 ms

select * from vsubmission; 
oracle: 49000 ms
hana  :  6300 ms

select avg(LENGTH(products)) from vsubmission;
oracle: 30000 ms
hana  :  2400 ms

oracle:  
hana  : 


oracle:  
hana  : 


oracle:  
hana  : 


oracle:  
hana  : 


oracle:  
hana  : 


