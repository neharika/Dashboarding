--KPI 1:
--KPI 3: Gross Sales Revenue & AOV
--150418237.66 & 7528.82

set search_path to ecom;
select round(sum(total),2)::numeric as gross_revenue,
round(sum(total)::numeric/nullif(count(distinct(order_id))::numeric,0),2) as AOV
 from orders
where lower(trim(status))='delivered'
and lower(trim(payment_status)) <>'failed';

--KPI 4: Revenue Growth Rate
set search_path to ecom;


--KPI 5: Top 5 Products by Revenue (Delivered)
set search_path to ecom;
with revenue_calculation as(
    SELECT p.product_id,p.product_name,
    sum(o.total) as gross_revenue from
    orders o join order_items oi ON
    o.order_id=oi.order_id join
    product_variants pv ON 
    pv.variant_id=oi.variant_id JOIN 
    products p ON
    pv.product_id=p.product_id
    where lower(trim(o.status))='delivered'
    and o.payment_status<>'failed'
    group by p.product_id
    )
    select product_id,product_name,
    round(gross_revenue,2) as Revenue_Generated
    from revenue_calculation
    ORDER BY Revenue_Generated desc
    limit 5;

--KPI 6: Revenue by Country
set search_path to ecom;
with country_revenue as(
    SELECT 
    case when c.country is null OR
        lower(trim(c.country)) in ('na','n/a','not available')
        or trim(c.country)=''
        then 'Not Provided'
        else trim(c.country)
        END as country,
    sum(o.total) as gross_country_revenue from
    customers c join orders o ON
    c.customer_id=o.customer_id
    where lower(trim(o.status))='delivered'
    and o.payment_status<>'failed'
    group by    
        CASE
            when c.country is null OR
        lower(trim(c.country)) in ('na','n/a','not available')
        or trim(c.country)=''
        then 'Not Provided'
        else trim(c.country)
        END 
    )
    select 
    country,
    round(gross_country_revenue,2) as Revenue_Generated
    from country_revenue
    ORDER BY gross_country_revenue desc;

--other better version

SET search_path TO ecom;
WITH normalized_customers AS (
    SELECT
        customer_id,
        CASE
            WHEN country IS NULL
                OR TRIM(country) = ''
                OR LOWER(TRIM(country))
                   IN ('na', 'n/a', 'not available')
            THEN 'Not Provided'
            ELSE TRIM(country)
        END AS country
    FROM customers
),
country_revenue AS (
    SELECT
        c.country,
        SUM(o.total) AS gross_country_revenue
    FROM normalized_customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    WHERE LOWER(TRIM(o.status)) = 'delivered'
      AND LOWER(TRIM(o.payment_status)) <> 'failed'
    GROUP BY c.country
)
SELECT
    country,
    ROUND(gross_country_revenue::numeric, 2)
        AS revenue_generated
FROM country_revenue
ORDER BY gross_country_revenue DESC;


