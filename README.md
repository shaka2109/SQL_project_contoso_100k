
# Sales Analysis

### Overview
Explored customer behavior and retention metrics, applying LTV analysis to uncover insights that enhance retention strategies and boost revenue for an e-commerce company.

### Business questions
1. **Customer segmentation analysis**. Who are the most valuable customers?
2. **Cohort analysis**. How do different customer groups generate revenue?
3. **Retention analysis**. Which customers have not purchased recently?



## Customer Segmentation Analysis
- Segmented customers into High, Medium, and Low value groups by calculating total lifetime value (LTV) from aggregated revenue.

**Query**:   [Customer_segmentation](Scripts/1.Customer_segmentation.sql)

**Visualization**

<img src="/images/ltv_pie_chart_pastel_darker.png" alt="Total LTV Distribution" style="width: 50%; height: auto;">

###

**Key findings**
- High-value segment (25% of customers) drives 66% of revenue ($135.6M).
- Mid-value segment (50% of customers) drives 32% of revenue ($66.3M).
- Low-value segment (25% of customers) drives 2% of revenue ($4.3M).

**Business Insights**
- High-value customers contribute the majority of total LTV, generating 135.6M. It's need to keep the group interested by maybe offering a premium membership program.
- Average lifetime value increases sharply across segments, showing a steep value gradient within the customer base. It might be helpful to design re-engagement campaigns and price-sensitive promotions for low-value segment.



## Cohort Analysis
- Tracked revenue and customer counts across cohorts.
- Defined cohorts based on each customer's first-purchase year.
- Analyzed customer retention metrics at the cohort level.
###

**Query**:  [Cohort_year](Scripts/2.Cohort_year.sql) from [Cohort_analysis](Scripts/2.Cohort_analysis.sql)

**Visualization**

<img src="/images/customer_revenue.png" alt="Customer Revenue by First Purchase Year" style="width: 50%; height: auto;">

###
**Key findings**
- Revenue per customer shows a concerning downward trend over time.
- Cohorts from 2022–2024 consistently underperform compared to earlier cohorts.
- Although total revenue continues to grow, this appears driven by a larger customer base rather than increased customer value.
###

**Business Insights**
- Customer value (LTV) has been declining over time and requires deeper investigation.
- Customer acquisition dropped noticeably in 2023, raising concerns.
- With falling LTV and decreasing acquisition, the company may be at risk of future revenue decline.




###

## Retention analysis
- Identified customers at risking of churning.
- Analyzed last purchase patterns.

**Query**: [Retention_analysis](Scripts/3.Retention_analysis.sql)

**Visualization**

<img src="/images/total_customer_retention.png" alt="Total Customer Retention" style="width: 50%; height: auto;">

###

**Query**: [Retention_analysis_by_cohort_year](Scripts/3.Retention_analysis_by_cohort.sql)


**Visualization**

<img src="/images/Retention_churned_year.jpeg" alt="Retention and churn customers by cohort year" style="width: 50%; height: auto;">

###
**Key findings**
- Cohort churn stabilizes at ~90% after 2-3 years, indicating a predictable long-term retention pattern.
- Retention rates are consistently low (8-10) across all cohorts, suggesting retention issues are systemic rather than specific to certain years.
- Only ~ 9.5% of the total customers are “active” in the last 6 months without considering first-time-purchasing customers in the same period, implies that less than one in ten customers is retained, limiting the long-term customer lifetime value (CLV), meaning the business might be too dependent on acquiring new customers rather than maximizing value from existing ones.

**Business Insights**

- With churn rates above 89% every year, customer royalty programs, personalized engagement, or subscription models could be critical to reduce attrition.
- The dip in 2023 shows that gains are fragile. Continuos investment in retention strategies is essential to avoid sliding back, implying a need for consistency

###

# Strategic recommendations

### Value
- Create personalized upgrade path for all segments.
- Design price-sensitive promotions for low-value segment
### Performance
- Target 2022-2024 cohorts with re-engagement offers.
- Implement loyalty/subscription programs to stabilize revenue fluctuations.
### Retention
- Strengthen early engagement strategies to target the first 1-2 years with onboarding incentives and loyalty rewards.
- Focus on targeted win-back campaigns for high-value churned customers.
###

# Technical details
- **Database:** PostgreSQL
- **Analysis tools:** PostgreSQL, DBeaver and PGadmin
- **Visualization:** ChatGPT, Copilot

# ACTUALIZAR

- Strategic recommendations
