# Executive Summary — E-commerce Sales Analysis

## Overview

This project analyses e-commerce sales, product performance, geographic revenue distribution, and order outcomes using PostgreSQL and Tableau. The dashboard focuses on delivered-order revenue, while operational KPIs provide context on order volume, cancellations, and refunds.

## Key Findings

### 1. Revenue declined substantially after April

Delivered revenue reached 66.62 million in April 2026 before falling to 38.05 million in May, a month-over-month decrease of 42.89%. Both months cover complete calendar periods, making this the clearest comparison in the available monthly data.

**Business implication:** Investigate changes in order volume, product mix, and customer purchasing patterns between April and May before deciding on corrective action. The observed decline identifies an area for investigation but does not establish its cause.

### 2. Revenue is concentrated in India

India generated approximately 112.73 million in reported delivered revenue, compared with 20.84 million from the United States and 16.85 million associated with customers whose country was not provided. India contributed approximately 74.9% of total delivered revenue.

**Business implication:** Assess opportunities to retain and grow customers in India while exploring other markets. Improve country-data completeness so that geographic comparisons are more reliable.

### 3. Order cancellations affect 5.45% of all orders

The dataset contains 40,000 orders, of which 2,178 have a cancelled status. This produces an overall cancellation rate of 5.45%, using all orders as the denominator.

**Business implication:** Review cancellation reasons and patterns by order status, product, and time period. Distinguish customer cancellations from operational or payment-related issues before recommending interventions.

## Supporting KPI Context

The analysis reports delivered revenue of 150.42 million and an average order value (AOV) of 7,528.82. The dashboard also reports a refund rate of 1.14% based on 227 successful refund records and 19,979 delivered orders. This should be interpreted according to the current query's definition; it is not necessarily the percentage of distinct delivered orders that received a refund if an order can have multiple refund records.

The five leading products by item-level revenue range from 455,771 to 566,678. These figures use order-item line totals for delivered orders and exclude failed payments.

## Data Limitations

March 2026 covers March 16–31, while June covers June 1–14. Both are partial periods and should not be compared directly with complete months as if coverage were equal. April and May are complete months in the available results.

Revenue values are reported in the database's units. Product-level item revenue may differ from order-level revenue because discounts, taxes, and shipping are not necessarily allocated to individual products. These findings describe observed patterns and do not establish causation.

## Recommended Next Steps

1. Investigate the April-to-May revenue decline using product, customer, and order-volume breakdowns.
2. Analyse cancellation reasons and order statuses to identify preventable cancellations.
3. Improve country-data completeness and monitor revenue using comparable, complete periods.