# KPI Plan — E-commerce Executive Dashboard

## 1. Purpose

The dashboard will provide a concise view of e-commerce performance, helping the CEO understand revenue generation, customer demand, product performance, and operational risks. The selected KPIs prioritize metrics that support business decisions rather than simply describe the available data.

All KPIs should use consistent reporting periods, documented calculation rules, and clearly defined treatment of incomplete orders, cancellations, discounts, and refunds.

## 2. Selected KPIs

### KPI 1: Gross Sales Revenue

**Definition:** Total value of order items before order-level discounts, taxes, shipping fees, and refunds, using `SUM(order_items.line_total)` as the starting point, subject to validation of how `line_total` is calculated.

**Unit:** Currency, displayed in ₹ or the database's confirmed reporting currency.

**Comparison or trend:** Revenue over time, compared with the previous equivalent period. A percentage change may be shown when the comparison-period value is non-zero.

**Why it matters:** Revenue is the primary indicator of commercial scale. It helps the CEO assess whether sales are increasing or declining. The dashboard must label this metric accurately and must not present it as net revenue.

### KPI 2: Total Orders

**Definition:** Count of distinct orders created during the selected reporting period, using `orders.order_id`. The initial definition includes all recorded order statuses, with cancellations identified separately.

**Unit:** Number of orders.

**Comparison or trend:** Current-period orders versus the previous equivalent period, with a time-series trend where useful.

**Why it matters:** Order volume measures customer purchasing activity independently of order value. Comparing orders with revenue helps distinguish changes driven by purchase frequency from changes driven by transaction size.

### KPI 3: Average Order Value (AOV)

**Definition:** Gross sales revenue divided by the number of distinct orders in the same reporting period, provided both metrics use compatible inclusion rules.

**Unit:** Currency per order.

**Comparison or trend:** Current AOV versus the previous equivalent period.

**Why it matters:** AOV indicates the average monetary value associated with an order. An increase may reflect larger baskets or a shift in product mix, while a decrease may indicate smaller purchases. It should be interpreted alongside order volume and revenue.

### KPI 4: Revenue Growth Rate

**Definition:** Percentage change in gross sales revenue between the current and previous equivalent reporting periods.

**Formula:** `((Current Revenue - Previous Revenue) / Previous Revenue) × 100`

**Unit:** Percentage.

**Comparison or trend:** Period-over-period growth, with the comparison period displayed explicitly.

**Why it matters:** Absolute revenue shows business scale, while growth rate shows direction and pace. If previous-period revenue is zero, the growth rate should be displayed as unavailable rather than mathematically misleading.

### KPI 5: Top Products by Revenue

**Definition:** The five products generating the highest gross sales revenue during the selected reporting period, aggregated at the product level.

**Unit:** Revenue per product, with product ranking.

**Comparison or trend:** Current-period ranking and, where data supports it, comparison with the previous period.

**Why it matters:** This identifies the products contributing most to sales and helps management prioritize merchandising, inventory planning, and product-level investigation. Product and variant identifiers must be joined carefully to avoid double-counting.

### KPI 6: Revenue by Country

**Definition:** Gross sales revenue grouped by the customer's recorded country, with missing or blank country values classified as “Unknown / Not Provided.”

**Unit:** Revenue by country and percentage of total revenue.

**Comparison or trend:** Ranked country contribution, with period-over-period comparison where meaningful.

**Why it matters:** Geographic performance reveals major markets, concentration risks, and potential expansion opportunities. Country totals should reconcile with the overall revenue KPI.

### KPI 7: Cancellation Rate

**Definition:** Distinct cancelled orders divided by distinct orders created in the same reporting cohort, multiplied by 100. The cancellation classification must be validated against the authoritative order-status source.

**Unit:** Percentage.

**Comparison or trend:** Current-period cancellation rate versus the previous equivalent period.

**Why it matters:** A rising cancellation rate may indicate payment, availability, pricing, or fulfilment problems. It provides an early warning of demand that does not translate into completed business.

### KPI 8: Refund Rate

**Definition:** Initially, the percentage of distinct orders with a confirmed refund divided by distinct eligible orders in the selected cohort. If reliable order-level refund linkage is unavailable, use a clearly labelled refund count or refunded amount instead.

**Unit:** Percentage of orders, or currency if using refunded amount.

**Comparison or trend:** Trend over time, using consistent refund eligibility and attribution rules.

**Why it matters:** Refunds can indicate product-quality issues, customer dissatisfaction, or revenue leakage. The metric must not be interpreted as fully reconciled financial loss until return and refund records have been validated and linked correctly.

## 3. Implementation Priorities

The first dashboard version should prioritize gross sales revenue, total orders, AOV, and revenue growth as headline KPIs. Product and country performance should explain where results originate, while cancellation and refund metrics should expose operational risks.

Before publication, validate revenue calculations, order-status definitions, date attribution, product joins, and refund linkage. Every KPI should have a documented SQL definition and reconcile with its underlying dataset.

The dashboard is successful when management can understand business performance, identify the strongest contributors, and spot operational exceptions without needing to inspect raw tables.