# Methodology

1. **Load and explore** (`customerProject.ipynb`): read `customer_shopping_behavior.csv` with Pandas: 3,900 rows, 18 columns.
2. **Check the data**: only `Review Rating` had missing values (37 rows). No duplicate rows.
3. **Clean**:
   - filled the 37 missing ratings with the median rating of the same category
   - changed column names to snake_case (`purchase_amount_(usd)` became `purchase_amount`)
   - created `age_group` (four age bands with `pd.qcut`)
   - created `purchase_frequency_days` from the frequency labels (Weekly 7, Fortnightly and Bi-Weekly 14, Monthly 30, Quarterly and Every 3 Months 90, Annually 365)
   - dropped `promo_code_used` because it was identical to `discount_applied` in all 3,900 rows
4. **Load to PostgreSQL**: connected with SQLAlchemy and psycopg2 and saved the data to table `customer` in database `customer_behavior` (19 columns). The password comes from the `PGPASSWORD` environment variable.
5. **Analyze** (`notebooks/customer_behavior_analysis.ipynb`): Pandas for quick counts, SQL for the 10 business questions (`sql/business_analysis.sql`).
6. **Visualize**: Matplotlib and Seaborn charts, exported to `images/visualization_screenshots/`.
7. **Report**: two-page report in `reports/customer_behavior_analysis_report.pdf` (editable `.docx` next to it), and a longer chart report in `reports/project_report.pdf`.

## Decisions
- The data stays in one flat table. There are no dates and each customer has one row, so extra tables would not help.
- Spend levels are cut at the 33rd and 67th percentiles of purchase amount ($45 and $74), so the three groups have similar sizes.
- Repeat customers are measured with `previous_purchases` because there are no purchase dates.
- No dashboard tool was used. All visuals are Python charts inside the notebook.

## Limitations
- No date column: no trends over time.
- Gender, subscription and discount overlap completely (all women have no subscription and no discount, all subscribers are male with a discount).
- Bi-Weekly and Fortnightly were both set to 14 days.
- Most differences between groups are small.
