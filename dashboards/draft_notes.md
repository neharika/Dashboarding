
# Dashboard Draft Notes — E-commerce Executive Dashboard

## Purpose

This is the first working version of the executive dashboard. The goal is to make key business metrics visible on one screen and establish a structure that can be improved after stakeholder feedback. The priority at this stage is analytical correctness and coverage, rather than visual polish.

## What Is Intentionally Rough

- **Layout and spacing:** KPI cards and charts have been assembled in Tableau, but spacing, alignment, font hierarchy, and chart proportions may need adjustment.
- **Visual consistency:** Currency formats, percentage precision, titles, and labels will be standardized in the next iteration.
- **KPI presentation:** The dashboard includes revenue, order volume, average order value, cancellation rate, and refund rate, alongside product and country performance. The KPI area may need clearer separation between metric names and values.
- **Chart refinement:** The Top 5 Products chart and Revenue by Country chart are functional, but tooltips, axis formatting, and label readability can be improved.

## What Is Already Done

- SQL queries have been written for the planned KPIs and tested against the PostgreSQL database.
- Revenue by country includes a consolidated “Not Provided” category for missing or placeholder country values.
- The product chart is restricted to the five highest-revenue products.
- Cancellation and refund calculations use distinct order counts to reduce the risk of double-counting.
- The dashboard layout follows the intended structure: headline KPIs first, business drivers next, and operational metrics as supporting indicators.

## Analytical Caveats

Revenue is currently defined using delivered orders, excluding orders with failed payment status. This definition should remain consistent across the headline revenue KPI, product analysis, and country analysis. Refund status is treated as successful only when the refund status is `succeeded`. Refund and return relationships should be validated before interpreting the refund rate as a measure of financial loss.

## What I Would Improve Next

I would standardize formatting, improve the visual hierarchy, add a reporting-period filter, and validate all KPI values against independent SQL results. I would also ask the CEO which comparisons and operational thresholds matter most before adding further visual elements. The next version should be guided by business feedback rather than polishing details that may change.