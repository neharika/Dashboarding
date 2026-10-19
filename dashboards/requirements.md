# Dashboard Requirements — E-commerce Business Performance

## 1. Business Context

The CEO needs a single-screen dashboard for the Monday business review to understand e-commerce performance, identify growth opportunities, and flag operational issues requiring attention. The dashboard should prioritize actionable business insights over an exhaustive collection of metrics.

It must answer three questions:

- **Are we growing?** Understand sales and order performance over time.
- **Where are we growing?** Identify the countries, products, and customer segments contributing to performance.
- **Is anything broken?** Highlight potential issues with order fulfilment, cancellations, refunds, and order-status consistency.

## 2. Business Objectives

1. **Measure business performance:** Track revenue, order volume, and average order value (AOV) to assess commercial performance.
2. **Identify growth drivers:** Compare revenue and order trends across products, countries, and relevant customer segments to identify areas of strength and weakness.
3. **Monitor operational health:** Track order-status distribution, cancellations, and refunds to identify potential revenue leakage or fulfilment problems.
4. **Support decision-making:** Present the most important KPIs, trends, and exceptions in a format that enables the CEO to identify priorities quickly.

## 3. Assumptions

- The available e-commerce database contains approximately 40,000 orders and 10,000 customers.
- The dashboard will use the existing PostgreSQL data and verified SQL analysis wherever suitable.
- Revenue must have a clearly documented definition. Order-item revenue, discounts, tax, and shipping should not be combined inconsistently.
- Order counts and revenue will be interpreted using explicitly documented inclusion rules. Non-delivered orders must not automatically be excluded from every analysis.
- Order status may be inconsistent: 134 discrepancies were previously identified between `orders.status` and the latest recorded status in `order_status_history`. The dashboard must define its source of truth.
- Refund and return data have joinability limitations. Net revenue should not be presented as fully reconciled until these limitations are resolved.
- Missing customer-country values will be grouped under “Unknown / Not Provided,” rather than silently excluded.

## 4. Scope and Exclusions

**In scope:** Executive KPIs, revenue and order trends, geographic and product performance, order-status distribution, and operational exception indicators.

**Out of scope for the initial version:** Predictive forecasting, customer lifetime value modelling, advanced cohort analysis, and fully reconciled net revenue where reliable refund and return linkage is unavailable.

The dashboard should fit on one screen, use clear labels, and highlight material changes and exceptions without overwhelming the viewer.

## 5. Questions Requiring Clarification

1. What reporting period should be used, and should performance be compared with the previous equivalent period?
2. Should revenue represent gross merchandise value, revenue after discounts, or revenue including tax and shipping?
3. Which order statuses should count toward commercial KPIs, and which status source is authoritative?
4. Should refunds and returns be displayed as separate operational metrics until net revenue can be reconciled?
5. Which business thresholds should trigger alerts, and are there specific countries or product categories the CEO wants prioritized?

**Success criterion:** The CEO should be able to assess overall performance, locate the main growth contributors, and identify material operational problems within a few minutes.