
-- title: Customer_segmentation
WITH customer_ltv AS
(
SELECT
	customerkey,
	cleaned_name,
	SUM(net_revenue) AS ltv
FROM
	cohort_analysis
GROUP BY
	customerkey,
	cleaned_name
),
customer_segments AS
(
	SELECT 
		PERCENTILE_CONT(.25) WITHIN GROUP (ORDER BY ltv) AS ltv_25th,
		PERCENTILE_CONT(.75) WITHIN GROUP (ORDER BY ltv) AS ltv_75th 
	FROM
		customer_ltv
),
	segment_values AS
(
	SELECT
		c.*,
		CASE
			WHEN c.ltv < cs.ltv_25th THEN '1-Low_value'
			WHEN c.ltv <= cs.ltv_75th THEN '2-Medium_value'
			ELSE '3-High_value'
		END AS customer_category
	FROM
		customer_ltv c,
		customer_segments cs
)
	
SELECT
	customer_category,
	SUM(ltv) AS total_ltv,
	COUNT(customerkey) AS customer_count,
	SUM(ltv)/COUNT(customerkey) AS avg_ltv
FROM
	segment_values
GROUP BY
	customer_category
	
	
	

	
	