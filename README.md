# Retail Customer Shopping Behavior Analysis

SQL analysis and Python visualizations on 3,900 retail customers. Data is cleaned with Pandas, stored in PostgreSQL, queried with SQL and charted with Matplotlib and Seaborn inside a Jupyter Notebook.

## Business problem
Which customers and products bring in the most revenue, and how do subscriptions, discounts, shipping and payment methods relate to spending?

## Tools
Python, Pandas, Matplotlib, Seaborn, SQLAlchemy, psycopg2, PostgreSQL, Jupyter

## Workflow
1. `customerProject.ipynb`: clean the CSV (fill 37 missing ratings with the category median, snake_case column names, add `age_group` and `purchase_frequency_days`) and load it into the PostgreSQL table `customer`.
2. `notebooks/customer_behavior_analysis.ipynb`: connect to the database, explore the data, answer 10 business questions with SQL, chart each answer, write the insights.
3. `reports/customer_behavior_analysis_report.pdf`: two-page report (also as .docx). `reports/project_report.pdf` has all the charts.

## Key findings
| Finding | Evidence |
|---|---|
| Men bring in two thirds of revenue, but spend the same per purchase | Male $157,890 (67.7%) vs Female $75,191; average $59.54 vs $60.25 |
| A third of customers produce about half of revenue | 1,297 customers spending $74 or more: 48.5% of revenue |
| Clothing and Accessories lead | 44.7% and 31.8% of revenue; Outerwear 7.9% |
| Subscribers do not spend more per purchase | $59.49 vs $59.87 |
| Discounted purchases are not larger | $59.28 vs $60.13 |
| Age, shipping, payment, frequency and ratings show only small differences | see the notebook |

## Recommendations
Test marketing aimed at women, protect the high-spend customers with loyalty offers, review the Outerwear range, and test discounts and subscriptions before expanding them. These are patterns in the data, not proof of cause and effect.

## Limitations
- No date column, so no trends and no true repeat-purchase analysis (`previous_purchases` is used only as a rough stand-in).
- Every female customer has no subscription and no discount, and every subscriber is male with a discount, so gender, subscription and discount effects cannot be separated.
- Differences between most groups are small.
- "Bi-Weekly" and "Fortnightly" were both converted to 14 days.

## Project structure
```
customerProject.ipynb                   data cleaning and load to PostgreSQL
notebooks/customer_behavior_analysis.ipynb   SQL analysis and visualizations (outputs saved)
sql/database_exploration.sql            checks on the table
sql/business_analysis.sql               the 10 business questions
reports/                                two-page report (.pdf, .docx) and chart report (project_report.pdf)
images/visualization_screenshots/       charts exported from the notebook
requirements.txt
```

## How to run
```bash
pip install -r requirements.txt
```
Start PostgreSQL with a database called `customer_behavior`, then set the password as an environment variable instead of writing it in code.

PowerShell: `$env:PGPASSWORD = "your password"`  
Mac/Linux: `export PGPASSWORD="your password"`

Run `customerProject.ipynb` once to create the `customer` table, then open `notebooks/customer_behavior_analysis.ipynb` and run all cells.
