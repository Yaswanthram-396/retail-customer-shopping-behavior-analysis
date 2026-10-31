# Findings and recommendations

Every number comes from the SQL queries and the notebook outputs. These are patterns in the data, not proof of cause and effect.

## Findings
1. Male customers bring in two thirds of the revenue ($157,890, 67.7%), but the average purchase is almost the same for both genders ($59.54 vs $60.25). The gap is the number of customers.
2. Customers who spend $74 or more are 1,297 people (a third of all customers) and produce 48.5% of revenue.
3. Clothing and Accessories together make 76.5% of revenue. Outerwear is the smallest category (7.9%) with the lowest average purchase ($57.17).
4. Subscribers do not spend more per purchase ($59.49 vs $59.87) and bring in 26.9% of revenue.
5. Discounted purchases are not larger ($59.28 vs $60.13). The discounted share is about the same in every category (42.1% to 44.4%).
6. Young adults have the highest revenue (26.7%) and seniors the lowest (23.9%). Middle-aged customers and young adults buy slightly more often (about every 84 days) than seniors (about every 97 days).
7. Payment method, shipping type and purchase frequency show only small differences. Rating and purchase amount are not related (correlation 0.03).
8. 97.9% of customers have more than one previous purchase, so this split does not separate customers.

## Data limitations
- All 1,248 female customers have no subscription and no discount, and all 1,053 subscribers are male with a discount. Gender, subscription and discount effects cannot be separated.
- No dates, so no trends and no real repeat-purchase analysis.
- Differences between most groups are small and could be random.

## Possible recommendations
| Finding | Possible action |
|---|---|
| Women spend the same per purchase but are a third of customers | Try marketing aimed at women |
| A third of customers produce about half of revenue | Offers to keep high-spend customers |
| Outerwear is the weakest category | Review its range and prices |
| Discounts and subscriptions do not go with bigger purchases | Test them on a small group before spending more |
