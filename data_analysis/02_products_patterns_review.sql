/*
Compare claims per month per product to analyze: 
1. Are there any patterns in claims throughout the year?
2. Do claims amount increase toward the end of the year?
3. Is December higher than other months?
4. Are lunettes claims higher than lentilles across the year?
5. Is the end-of-year spike specific to lunettes or also applicable to lentilles?
6. Could the pattern indicate benefit usage before annual coverage resets?
*/
SELECT
    primary_level_1,
    month_nb,
    month_text,
    ROUND(AVG(REPLACE(sum_alan_covered, ',', '.')::NUMERIC), 2) AS avg_amount_per_month
FROM health_professional_claims_raw
GROUP BY
    primary_level_1,
    month_nb,
    month_text
ORDER BY
    primary_level_1,
    month_nb;