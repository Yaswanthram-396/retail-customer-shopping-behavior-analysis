# Business questions

All 10 questions are answered with SQL in [sql/business_analysis.sql](../sql/business_analysis.sql) and in section 8 of [notebooks/customer_behavior_analysis.ipynb](../notebooks/customer_behavior_analysis.ipynb), where each answer also has a chart.

| # | Question | Why it matters | Answer |
|---|---|---|---|
| 1 | How much revenue does each gender bring in? | Decides who to target in marketing | Male $157,890 (67.7%), Female $75,191 (32.3%). Average purchase $59.54 vs $60.25 |
| 2 | Who are the high-value customers? | A few big spenders can drive much of the revenue | Spending $74 or more: 1,297 customers, 48.5% of revenue. Medium ($45 to $73): 34.4%. Low (under $45): 17.0% |
| 3 | Which categories make the most sales? | Helps decide what to stock and promote | Clothing $104,264 (44.7%), Accessories 31.8%, Footwear 15.5%, Outerwear 7.9% |
| 4 | How do subscribers compare with non-subscribers? | Shows if the subscription brings extra value | 1,053 subscribers (27%), 26.9% of revenue. Average purchase $59.49 vs $59.87 |
| 5 | How are discounts used? | Discounts cost margin | 1,677 customers (43%) had a discount. Average purchase $59.28 vs $60.13 without. Discounted share by category 42.1% to 44.4% |
| 6 | Which age groups bring in the most revenue? | Targeting | Young adults (18 to 31) $62,143 (26.7%) highest, Seniors (58 to 70) $55,763 (23.9%) lowest |
| 7 | How often do customers buy? | Shows engagement | Seven frequency labels with 539 to 584 customers each. Average days between purchases: middle-aged 83.6, young adults 84.0, adults 92.8, seniors 96.8 |
| 8 | How are products rated? | Shows satisfaction | Category averages 3.72 to 3.79. Best products: Gloves 3.86, Sandals 3.84, Boots 3.82. Correlation of rating with purchase amount: 0.03 |
| 9 | Which shipping types and payment methods bring in the most revenue? | Operations and checkout | Free Shipping $40,777 highest, Standard has the lowest average purchase ($58.46). Credit Card $40,310 highest, Bank Transfer $36,544 lowest |
| 10 | Do we have repeat customers? | Retention | Limited: each customer appears once and there are no dates. Using previous_purchases as a stand-in, 97.9% have more than one |

`sql/customer_behavior.sql` is a separate set of 10 practice queries in a different style (it uses a CTE and a window function).
