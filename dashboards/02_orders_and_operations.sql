--KPI 2: Total orders
--40,000

set search_path to ecom;
select count(order_id)
as total_orders 
FROM
orders; 


--KPI 7: Cancellation rate
--2178, 5.45%
set search_path to ecom;
with total_orders as (
    select 
    count(order_id) as total_orders,
    count(*) filter 
    (where lower(trim(status))='cancelled') as cancel_orders
    from orders
    )
select cancel_orders,
round(cancel_orders*100.0/total_orders,2) as cancellation_rate
from total_orders;


--KPI 8: Refund rate
set search_path to ecom;
select distinct status from refunds

select count(r.refund_id) as total_no_refunds,
count(*) filter ()
from refunds r join orders o ON
r.order_id=o.order_id;