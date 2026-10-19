# Executive Dashboard — Layout Sketch

## 1. Design Objective

Create a single-screen executive dashboard that answers three questions:

- Are we growing?
- Which products and markets drive revenue?
- Are cancellations and refunds creating operational risks?

The layout prioritizes headline metrics, followed by business drivers and operational health.

## 2. ASCII Wireframe

```text
+---------------------------------------------------------------+
|             E-COMMERCE EXECUTIVE DASHBOARD                    |
| Reporting Period: [Selected Period] | Comparison: [Previous]  |
+---------------------------------------------------------------+
|                                                               |
|  GROSS SALES    TOTAL ORDERS    AOV          REVENUE GROWTH    |
|  ₹ XXX          XXX             ₹ XXX        +/- XX%           |
|  vs prev.       vs prev.        vs prev.     vs prev.          |
|                                                               |
+--------------------------------+------------------------------+
|                                |                              |
|  TOP 5 PRODUCTS BY REVENUE     |  REVENUE BY COUNTRY          |
|                                |                              |
|  Product A  ██████████         |  Country A  ██████████       |
|  Product B  ████████           |  Country B  ███████          |
|  Product C  ██████             |  Country C  █████            |
|  Product D  ████               |  Country D  ████             |
|  Product E  ███                |  Other / Unknown             |
|                                |                              |
+--------------------------------+------------------------------+
|                                                               |
|  OPERATIONAL HEALTH                                           |
|                                                               |
|  CANCELLATION RATE                 REFUND RATE                 |
|  XX%                               XX%                        |
|  Trend vs previous period          Trend vs previous period   |
|                                                               |
+---------------------------------------------------------------+
| Notes: Revenue definition, status rules, and data limitations |
+---------------------------------------------------------------+
```

## 3. Placement Rationale

### Row 1: Executive KPIs

Place gross sales revenue, total orders, average order value, and revenue growth in four equally sized cards.

These metrics provide an immediate overview of commercial performance. Show the current value prominently, with the previous-period comparison beneath it.

### Row 2: Revenue Drivers

Use two side-by-side panels.

- **Top 5 Products by Revenue:** A horizontal bar chart makes it easy to compare products and identify the strongest contributors.
- **Revenue by Country:** A ranked horizontal bar chart highlights geographic concentration and market opportunities.

Both panels should use the same reporting period and revenue definition as the headline KPIs.

### Row 3: Operational Health

Place cancellation rate and refund rate side by side. Show the current rate and its trend against the previous period. Use warning colors only when validated business thresholds are exceeded.

If refund data cannot be reconciled, replace the refund-rate card with a clearly labelled refund count or refunded amount.

### Footer: Definitions and Data Quality

Include a short note identifying the reporting period, revenue basis, order-status treatment, and any material data-quality limitations. Detailed methodology can remain in the project's documentation.

## 4. Design Rules

- Fit the dashboard on one screen without requiring vertical scrolling at the target display size.
- Use consistent currency formatting, date filters, labels, and comparison periods.
- Avoid unnecessary decoration, excessive colors, and 3D charts.
- Use descriptive titles and readable labels.
- Never display placeholder values as actual business results.

**Success criterion:** The CEO can identify overall performance, the leading products and markets, and operational risks within a few minutes.