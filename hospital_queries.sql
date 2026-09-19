USE hospital_project;

-- 1. Basic exploration: total patient count
SELECT COUNT(*) FROM hospital_data;

-- 2. Average length of stay by medical condition
SELECT `Medical Condition`, ROUND(AVG(Length_of_stay), 1) AS avg_los
FROM hospital_data
WHERE `Medical Condition` IS NOT NULL AND `Medical Condition` != ''
GROUP BY `Medical Condition`
ORDER BY avg_los DESC;

-- 3. Admissions by hospital
SELECT Hospital, COUNT(*) AS admissions
FROM hospital_data
GROUP BY Hospital
ORDER BY admissions DESC
LIMIT 10;

-- 4. Billing amount stats by insurance provider
SELECT `Insurance Provider`,
       ROUND(AVG(`Billing Amount`), 2) AS avg_bill,
       MIN(`Billing Amount`) AS min_bill,
       MAX(`Billing Amount`) AS max_bill
FROM hospital_data
GROUP BY `Insurance Provider`;

-- 5. Monthly admission trend
-- Note: Date of Admission imported as TEXT, converted with STR_TO_DATE
SELECT DATE_FORMAT(STR_TO_DATE(`Date of Admission`, '%m/%d/%Y'), '%Y-%m') AS month,
       COUNT(*) AS admissions
FROM hospital_data
GROUP BY month
ORDER BY month;

-- 6. Test results by age group
SELECT
  CASE
    WHEN Age < 18 THEN 'Under 18'
    WHEN Age BETWEEN 18 AND 40 THEN '18-40'
    WHEN Age BETWEEN 41 AND 65 THEN '41-65'
    ELSE '65+'
  END AS age_group,
  `Test Results`,
  COUNT(*) AS countspecies
FROM hospital_data
GROUP BY age_group, `Test Results`
ORDER BY age_group;