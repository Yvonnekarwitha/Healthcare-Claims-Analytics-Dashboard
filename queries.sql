Healthcare_DB;

-- Total claims and total cost
SELECT 
    COUNT(*) AS total_claims,
    SUM(claim_amount) AS total_claim_amount
FROM claims;

-- Average claim amount
SELECT 
    AVG(claim_amount) AS avg_claim_amount
FROM claims;

-- Claims by status
SELECT 
    claim_status,
    COUNT(*) AS total_claims
FROM claims
GROUP BY claim_status;

-- Cost by diagnosis
SELECT 
    diagnosis,
    COUNT(*) AS number_of_claims,
    SUM(claim_amount) AS total_claim_amount,
    AVG(claim_amount) AS avg_claim_amount
FROM claims
GROUP BY diagnosis
ORDER BY total_claim_amount DESC;

-- Monthly trend
SELECT 
    FORMAT(claim_date, 'yyyy-MM') AS month,
    COUNT(*) AS total_claims,
    SUM(claim_amount) AS total_cost
FROM claims
GROUP BY FORMAT(claim_date, 'yyyy-MM')
ORDER BY month;

-- Approval rate by month
SELECT 
    FORMAT(claim_date, 'yyyy-MM') AS month,
    COUNT(*) AS total_claims,
    SUM(CASE WHEN claim_status = 'Approved' THEN 1 ELSE 0 END) AS approved_claims,
    ROUND(
        100.0 * SUM(CASE WHEN claim_status = 'Approved' THEN 1 ELSE 0 END) / COUNT(*), 
        2
    ) AS approval_rate_percentage
FROM claims
GROUP BY FORMAT(claim_date, 'yyyy-MM')
ORDER BY month;
