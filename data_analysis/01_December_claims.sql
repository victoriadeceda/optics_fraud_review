/* 
Compare professionals' claims made in December to analyze:
1. Which professionals contribute the most to the December spike?
2. Are the highest claim amounts in December for specific professionals?
3. Are large claims associated with a specific product (Lunettes vs Lentilles)?
*/
*/
SELECT
    health_professional_name,
    sum_alan_covered,
    month_nb,
    primary_level_1
FROM health_professional_claims_raw
WHERE month_nb = '12';