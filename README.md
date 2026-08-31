# Excel Business Analytics Projects

Two data analysis projects built entirely in Excel — an interactive sales dashboard for an e-commerce business, and a regression model predicting restaurant tips from customer and order attributes.

---

## 1. E-Commerce Sales Performance Dashboard

An interactive Excel dashboard analyzing historical e-commerce transactions to surface what drives revenue, profit, and operational efficiency across products, regions, and customers.

### Business Questions Answered
- Which product categories and regions generate the most revenue and profit?
- How do discounts affect profitability?
- Who are the highest-value customers, and which products deserve more marketing investment?
- How does shipping cost impact margins, and where are shipping delays concentrated?
- What seasonal trends exist in the sales data?

### Approach
- **Data preparation**: removed duplicate transactions, standardized date formats, validated numeric fields, checked for missing values, and derived Month/Year fields.
- **Feature engineering**: calculated profit margin, average order value, average shipping cost, average discount, customer lifetime sales, and regional contribution %.
- **Dashboard**: built with pivot tables, pivot charts, slicers (Product Category, Region, State, Ship Mode, Order Priority), and a timeline filter — all visualizations update dynamically based on user selection.

### Key Insights
- Technology products generated the highest revenue, but high sales volume didn't always mean high profit — aggressive discounting eroded margins in several categories.
- A small group of customers accounted for a disproportionate share of total revenue, highlighting the value of retention-focused strategies.
- Higher shipping costs measurably reduced profit margins in certain regions.
- Sales showed recurring seasonal peaks, useful for inventory planning.

### Files
| File | Description |
|---|---|
| `ecommerce/E-Commerce_Dashboard.xlsx` | Raw transaction-level sales dataset (order, product, customer, shipping, and profitability fields). |
| `ecommerce/E_COMMERCE_PROJECT_OVERVIEW.docx` | Full write-up: business objectives, KPIs, dashboard components, insights, and recommendations. |

---

## 2. Predicting Restaurant Tips

A regression analysis estimating tip amounts from customer and order attributes (bill size, party size, day, time, gender, smoker status), built using Excel's Data Analysis ToolPak.

### Approach
- **Data cleaning**: checked for missing values and duplicates in the raw tips dataset.
- **Encoding**: converted categorical fields (`sex`, `smoker`, `day`, `time`) to numeric values.
- **Exploration**: pivot tables and charts summarizing total tips by gender and by gender × time of day (pie and bar charts).
- **Correlation analysis**: measured the relationship between `tip` and each independent variable to identify the strongest predictors.
- **Regression**: ran a multiple linear regression (tip as the dependent variable) using the Data Analysis ToolPak, then used the resulting coefficients and intercept to build a predictive equation and generate predicted tip values for every row.

### Key Insights
- Total bill amount is the strongest predictor of tip amount.
- Tip behavior varies by time of day and party size, offering a starting point for staffing or service-focused decisions.

### Files
| File | Description |
|---|---|
| `restaurant-tips/Restaurant_tips_dataset.xlsx` | Raw tips dataset. |
| `restaurant-tips/Predicting_restaurant_tips.xlsx` | Full solved workbook: encoded variables, pivot tables, correlation matrix, regression output, and predicted tip values, organized into separate sheets. |

---

## Tools Used
Microsoft Excel — Pivot Tables & Charts, Slicers, Timelines, Conditional Formatting, Data Analysis ToolPak (correlation & regression), Power Query, advanced formulas.

## How to Use
Open any `.xlsx` file directly in Excel. For the e-commerce dashboard, use the slicers at the top of the dashboard sheet to filter by category, region, or time period. For the restaurant tips workbook, see the `Regression` sheet for the model output and the `Predicted tip` sheet for row-level predictions.
