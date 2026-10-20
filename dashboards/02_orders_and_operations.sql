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
--19979,227,1.14
set search_path to ecom;
with order_count as(
select count(distinct(order_id)) as total_orders 
from orders
where lower(trim(status))='delivered'
),
refund_orders as(
select count(distinct(r.refund_id)) as total_no_refunds
from refunds r join orders o ON
o.order_id=r.order_id
where r.status='succeeded' and 
lower(trim(o.status)) = 'delivered'
)
select oc.total_orders,ro.total_no_refunds,
round(ro.total_no_refunds*100.0/nullif(oc.total_orders,0),2) as refund_rate_pct
from order_count oc cross join refund_orders ro ;
