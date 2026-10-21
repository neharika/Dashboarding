# Response to Executive Feedback — Milestone 4

## Overview

Following the initial review of the E-commerce Executive Dashboard,
I revised the dashboard to address four areas of feedback: order
volume and average order value clarity, refund-rate accuracy,
monthly revenue growth, and dashboard interactivity.

The objective was to make the dashboard easier to interpret,
improve the reliability of the reported metrics, and give
executives more flexibility when investigating performance.

## 1. Order Volume and Average Order Value

The original dashboard presented total orders and revenue
alongside average order value (AOV), but the relationship between
these metrics was not sufficiently clear.

The revised dashboard distinguishes between orders placed and
orders delivered. This distinction matters because not every
placed order reaches the delivered stage.

AOV is labelled to identify the population used in its calculation.
This helps prevent users from interpreting delivered-order AOV
as the average value of every order placed.

The revised presentation makes the relationship between revenue,
order volume, and AOV easier to understand without requiring
additional calculations by the viewer.

## 2. Refund Rate

The initial dashboard displayed a refund rate of 5.4%, whereas
the review identified 1.14% as the verified refund rate for
delivered orders.

I updated the dashboard to display 1.14% and aligned the metric
with the intended delivered-order population.

This distinction is important because a refund rate can be
misleading if its numerator and denominator use different
populations. The definition must specify which orders qualify
and which refund statuses count as successful refunds.

The revised metric provides a clearer view of refunds in relation
to delivered orders. The rate should be interpreted according to
that defined population rather than as a measure of all orders.

## 3. Monthly Revenue Growth

I added month-over-month revenue growth to the monthly
performance view.

Revenue shows the amount generated during a period, while
month-over-month growth shows how that amount changed relative
to the previous month. These measures provide complementary
information: revenue communicates scale, while growth
communicates direction and rate of change.

The addition allows executives to identify periods of growth
or decline and investigate them further rather than relying
only on monthly revenue totals.

## 4. Country and Product Interactivity

I added filters for country and product to make the dashboard
more exploratory.

These controls allow users to narrow their analysis to a
particular market or product and investigate the corresponding
performance measures. This is useful when executives want to
understand which markets contribute most to revenue or how
individual products perform.

Interactivity also reduces the need to create separate static
charts for every possible country or product selection.

## Conclusion

The revised dashboard responds to all four areas of executive
feedback. It clarifies the order metrics, displays the verified
refund rate, incorporates monthly revenue growth, and supports
country- and product-level exploration.

The iteration demonstrates that an executive dashboard is
not simply a collection of charts. Its metrics, labels, and
interactions must support consistent interpretation and
practical business decisions.