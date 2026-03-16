
/* 
Average, minimum and maximum claim amounts per professional and product
1. Which professionals have the highest average claim amounts?
2. Are there large gaps between minimum and maximum claims for certain professionals?
3. Do some professionals show unusually high maximum values compared to others?
4. Are these large claims concentrated in a specific product type (lunettes or lentilles)?
5. Which professionals stand out as outliers?
*/
SELECT
    health_professional_name,
    AVG(REPLACE(sum_alan_covered, ',', '.')::NUMERIC) AS avg_amount,
    MIN(REPLACE(sum_alan_covered, ',', '.')::NUMERIC) AS min_amount,
    MAX(REPLACE(sum_alan_covered, ',', '.')::NUMERIC) AS max_amount,
    primary_level_1
FROM health_professional_claims_raw
GROUP BY health_professional_name,
    primary_level_1
ORDER BY health_professional_name DESC;