# Dashboard Design Rationale — E-commerce Executive Dashboard

## 1. Design Objective

The dashboard is designed to help an executive assess e-commerce performance quickly, identify areas requiring attention, and explore the factors behind revenue changes. The layout prioritizes headline KPIs before moving to product, geographic, and monthly performance.

The design balances a compact executive overview with enough detail to support follow-up analysis.

## 2. Layout and Positioning

### Dashboard title and reporting context — top centre

The title, *E-commerce Executive Dashboard*, is positioned at the top centre to establish the dashboard's purpose immediately. A short subtitle identifies the reporting context and data scope, helping users understand what the figures represent.

### KPI summary — directly below the title

The KPI section is placed above the charts because executives typically need to understand overall performance before examining individual categories. Keeping these figures together also makes it easier to compare revenue, order volumes, AOV, cancellations, and refunds.

The revised KPI labels distinguish orders placed from orders delivered. Delivered AOV and refund rate are explicitly associated with their relevant populations to reduce ambiguity.

### Product and country charts — middle section

The product and country views sit side by side beneath the KPIs. This creates a comparison between **what sells** and **where revenue comes from** without requiring the viewer to navigate to separate worksheets.

### Monthly trend — lower section

The monthly trend is positioned below the product and country views. This gives the dashboard a logical progression from overall performance to category-level comparisons and then to performance over time.

## 3. Chart-Type Decisions

### Top Five Products by Revenue — horizontal bar chart

A horizontal bar chart was selected because product names can be long. Horizontal labels remain easier to read than labels rotated beneath vertical bars. Bar length also makes revenue differences straightforward to compare.

The chart is restricted to the five highest-revenue products to maintain focus and prevent a long product list from dominating the dashboard. Revenue is encoded by bar length, with a common axis supporting direct comparison.

### Revenue by Country — vertical bar chart

A vertical bar chart was selected to compare revenue across a relatively small number of country categories. The shared quantitative axis makes differences in contribution easy to see.

Country names appear along the horizontal axis, while bar height represents revenue. Unavailable country values are grouped under a clearly labelled category rather than being silently omitted. This preserves visibility into records with incomplete geographic information.

### Monthly Revenue and Growth — time-series chart

A line-based time-series chart was chosen because months have a natural chronological order and the main question concerns movement over time. Connecting the monthly values makes increases, decreases, and turning points easier to identify.

Revenue and month-over-month growth represent different concepts: revenue measures scale, while growth measures percentage change. They should therefore have clearly differentiated labels and formatting. If both are shown on the same chart, their scales must remain understandable and must not imply that a percentage is a currency amount.

## 4. Colour Decisions

Blue is used for the product revenue bars because it provides a consistent, restrained visual treatment for ranked comparisons. Using the same colour across products keeps attention on bar length rather than decorative variation.

Country bars use distinct colours to make individual categories easier to distinguish. These colours are categorical, not performance rankings: the colour itself should not imply that one country is good or bad. Country names and the revenue axis remain the primary means of interpretation.

The monthly trend uses a contrasting line to separate the time-series view visually from the bar charts. Colour is used to distinguish chart elements, while position, length, and direction carry the quantitative meaning.

The dashboard avoids unnecessary decorative colours so that the headline figures and significant changes remain the focus.

## 5. Typography, Labels, and Number Formatting

The dashboard uses a clear title hierarchy, compact KPI labels, and chart titles that describe the business question being answered. Metric names should use plain language rather than relying exclusively on database-style field names.

Revenue values use consistent currency and number formatting. Order counts are displayed as whole numbers. Cancellation and refund rates include percentage signs and appropriate decimal precision.

This is particularly important for the refund rate: displaying **1.14%** is clearer than showing `1.140` without a unit. Similarly, labelling the AOV as *Delivered AOV* clarifies which orders are included.

## 6. Filters and Interaction

Country and product filters allow users to investigate specific markets and products without creating separate dashboards for each selection. Their placement should make them discoverable without competing visually with the KPI summary.

The filters should update the intended charts and relevant measures consistently. Testing should confirm that filtering does not unintentionally alter a KPI's denominator or change its business definition.

## 7. Trade-offs and Future Improvements

A single-screen layout improves scanability but limits the amount of detail that can be displayed. The top-five product restriction is an intentional trade-off: it emphasizes the leading contributors rather than attempting to show the entire catalogue.

Future iterations could add date-range controls, revenue targets, explanatory annotations for unusual monthly movements, and accessible colour choices verified across different displays.

## Conclusion

The design uses placement to establish reading order, chart type to match the analytical question, and colour to distinguish categories without replacing quantitative evidence. Consistent labels and units support accurate interpretation, while filters let executives move from a summary view to focused analysis.