## Are there any patterns in the data that could indicate fraudulent activity for health professionals? Have you identified one or several suspicious health professionals? 

Toward the end of the year, there appears to be a spike in claims, particularly for lunettes.

*Show visualization of first and last table*

#### Probable causes

1. Annual optical allowances: one possible explanation is end-of-year benefit exhaustion, since mutuelles often include annual allowances for optical care. Because these limits reset at the beginning of the year, members may purchase glasses before the reset to use their remaining coverage, which can cause a spike in demand in November–December.

2. Billing delays: claims may not be filed in the month when the treatment occurred and instead may be accumulated and submitted in December. While this may not immediately suggest fraud, it could still be considered irregular behavior if it does not comply with the proper procedures defined in the terms and conditions.

4. Mismatch between invoices and treatment dates: invoices may not correspond to the actual treatment dates, meaning claims could be backdated or dates may have been manipulated.

These explanations do not necessarily indicate fraud. However, the magnitude of certain reimbursements appears unusually high compared to other providers. Kylian's frames, Les lunettes à Soso, and Roudoudou lentilles show significantly larger claim amounts than other professionals.


## How would you identify if this trend could be related to fraud? What methods would you consider to investigate and potentially recover any misappropriated funds?

### Analysis
- Does this spike happen every year?
    No enough data to review past december 2021 to december 2022.
- Does it affect all professionals or only a few?
    Only a few professionals show a significant spike in December compared to others. It could be because they're larger clinics so that's why I compared high-spike professionals avg in december to their avg in the year. Results show their average is off by more than 500€. 
- Is the spike concentrated in a specific product category? 
    Spike is concentrated in lunettes. Even though there's a slight spike in December for lentilles, it's smaller and could be explain by end of the year benefit exhaustion. 
- Is there a big spike in average from the rest of the months compared to December?

*Add visualization of table 2 and 3 where averages are shown grouped by product*

### Key findings
Comparing average gaps
- Kylian's frames average from January to November is 1084,68€. Factoring December in, the average spikes to 2427,09€. Showing a gap in average of: 1342,41€
- Roudoudou lentilles average from January to November is 3061,70€. Factoring December in, the average spikes to 4034,79€. Showing a gap in average of: 973,09€
- Les lunettes á Soso average from January to November is 1127,16€. Factoring December in, the average spikes to 1662,56€. Showing a gap in average of: 535,40€

While other professionals' gaps in average are less than 500€. 

Additionally, claims made by these professionals in December are significantly higher than their yearly average. 
- Kylian's frames: 22563,36€
- Roudoudou lentilles: 8900,23€
- Les lunettes á Soso: 9158,11€

While Penthievre alambics (6307,86€) and Queen optics (6943,38€) claims are also high, their gap in average is less than 500€.  

### What methods would you consider to investigate and potentially recover any misappropriated funds?

Investigation steps:
1. Verify treatment date vs claim submission date: check whether services were actually provided in December
2. Glasses being billed with lenses when patients only purchased the glasses. Check whether providers frequently claim lenses and glasses together with unusually high reimbursement amounts
3. Patient analysis: are there multiple claims for the same patient in a short time? 
4. Claims audit: verify invoices submitted by the provider, check prescription validity, are prices consistent with market prices? 
5. Contact the patient to confirm treatment

If fraud is confirmed: 
1. Suspend reimbursements temporarily
2. Require pre-validation for future claims
3. Reimbursement clawbacks 

Ultimately, there can also be legal consequences such as:
1. Terminate provider contract and proceed with demand. 


## Based on your analysis, what proactive actions would you take or initiate to prevent similar fraud in the future?


1. Automated dashboard for anomaly detection and real time analysis with reports para monitorear cambios en patrones de facturacion, profesionales que sean sospechosos o spikes en algún momento del año, especialmente diciembre por el récord que hay, se sabe que es un mes que puede tender a tener más spikes de fraudes, etc. 
Formatting de las visualizaciones, de que si el monto cobrado por profesional en tal mes supera cierta cantidad, se muestre en rojo y así alertar a quienes reciben las alertas.
Continuously compare providers’ claims against similar clinics to detect outliers early.
flag repeated glasses + lenses claims for the same member.
 trigger review when December claims exceed historical averages by X%.
Flags before payout
Outlier detection rule: automatically flag claims >3× provider’s monthly average.
Seasonality monitoring: automatically detect unusual spikes vs historical monthly patterns.
Peer benchmarking: compare providers’ claims against the market average for the same product.

2. Supporting documentation when submitting claims above average 
When submitting claims above their Avg (1000-3000), it's obligatory to add supporting documentation
(treatment date so we can compare it to claims submission date, prescription validity(lenses+glasses together), acknowledging that we'd need to contact the patient to validate treatment)
When submitting a high claim with documentation, automate a notification for possible fraud review. When it reaches the Ops Runner, the documentation's already there so that reduces claim handling times

3. Implement a provider risk score based on historical claim behavior.
Risk indicators could include:
unusually high reimbursement amounts
large monthly fluctuations
frequent high-value optical claims
claims that deviate from peer averages
Providers with higher risk scores could be subject to:
additional claim reviews
pre-authorization requirements
targeted audits.

4. Cross collab with data engineers to request missing data that could help us build better dashboards