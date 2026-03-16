
/*
Average, minimum and maximum amounts excluding December
1. How do professionals behave during the rest of the year without December's claims?
2. Do certain professionals show a significant drop in their average when December is removed?
3. Does this indicate that December claims disproportionately affect their yearly averages?
4. Which professionals appear as outliers once the December spike is excluded?
*/
SELECT
    health_professional_name,
    AVG(REPLACE(sum_alan_covered, ',', '.')::NUMERIC) AS avg_amount,
    MIN(REPLACE(sum_alan_covered, ',', '.')::NUMERIC) AS min_amount,
    MAX(REPLACE(sum_alan_covered, ',', '.')::NUMERIC) AS max_amount,
    primary_level_1
FROM health_professional_claims_raw
WHERE month_nb <> '12'
GROUP BY health_professional_name,
    primary_level_1
ORDER BY health_professional_name DESC;