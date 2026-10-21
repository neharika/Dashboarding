# Dashboard Design Decisions — E-commerce Executive Dashboard

## 1. Design Objective

The dashboard is designed to give an executive a concise overview of e-commerce performance. It brings together revenue, order volume, average order value, cancellations, refunds, product performance, geographic performance, and monthly revenue trends in a single view.

The design prioritizes quick interpretation while allowing users to investigate specific products and markets when needed.

## 2. Layout and Visual Hierarchy

The dashboard follows a top-down reading order.

The KPI section appears at the top so that the most important business measures are visible before the user examines individual charts. The product, country, and monthly trend views sit below the headline metrics, providing context for the overall results.

This layout separates high-level performance monitoring from deeper analysis. It also reduces the need to navigate between multiple worksheets to understand the business at a glance.

## 3. KPI Selection

The headline metrics were selected to cover different aspects of business performance:

- **Delivered Revenue** measures revenue associated with delivered orders.
- **Orders Placed** indicates overall order demand.
- **Orders Delivered** shows how many orders reached the delivery stage.
- **Delivered AOV** measures average revenue per eligible delivered order.
- **Cancellation Rate** highlights the proportion of orders cancelled.
- **Refund Rate** measures the proportion of eligible delivered orders associated with successful refunds, according to the defined metric.

Separating placed orders from delivered orders is important because not every order placed is ultimately delivered. The labels also make the population used for AOV clearer and reduce the risk of comparing incompatible figures.

## 4. Chart Selection

### Top Products by Revenue

A horizontal bar chart supports comparisons across product names. Bar length makes differences in revenue easy to assess, while horizontal labels provide more room for longer product names. Limiting the view to the top five products keeps the chart focused on the strongest revenue contributors.

### Revenue by Country

A bar chart compares revenue across countries using a common quantitative scale. It helps identify the markets contributing most to delivered revenue. Missing or unavailable country values are grouped under a clear category rather than being silently excluded.

### Monthly Revenue Trend

A monthly trend view shows how revenue changes over time. Month-over-month growth complements revenue values by showing the relative change from one month to the next. This helps distinguish the size of monthly revenue from the direction and pace of change.

## 5. Interactivity

Country and product filters allow users to narrow the analysis to a particular market or product. These controls support follow-up questions without requiring separate dashboards for every possible selection.

Filters should be applied consistently to the relevant worksheets. KPI values should respond only where the selected dimension is meaningful to the metric, and the dashboard should be tested to ensure that filtering does not unintentionally change the underlying business definition.

## 6. Formatting and Design Trade-offs

The dashboard uses a compact single-screen layout to make the main information accessible without excessive scrolling. Number formatting, clear metric names, consistent units, and readable chart labels are important because executives should not need to infer whether a value represents revenue, an order count, or a percentage.

The design balances information density with readability. A limited number of headline metrics and a focused top-five product view reduce clutter while retaining useful business context.

## 7. Limitations and Future Improvements

The dashboard reflects the available data and the definitions used for each KPI. Future improvements could include date-range controls, targets or benchmarks, annotations for significant changes, and additional investigation of unusually large monthly movements.

Before using the dashboard for operational decisions, the displayed figures should continue to be reconciled with the corresponding SQL calculations and the agreed business definitions.

## Conclusion

The design aims to make the dashboard useful for both rapid executive review and focused exploration. Its KPI hierarchy, comparative charts, monthly trend, and filters support a clearer understanding of e-commerce performance while keeping the underlying metric definitions explicit.