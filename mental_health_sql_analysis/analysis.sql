/*
============================================================
Mental Health Analysis of International Students
============================================================

Context:
A Japanese international university conducted a mental health
survey among its students in 2018. The study focused on
understanding whether studying abroad affects mental health,
particularly among international students.

The published research suggested that:
- International students are at higher risk of mental health difficulties
- Social connectedness and acculturative stress are strong predictors of depression
- Length of stay may influence mental health outcomes

This analysis explores whether similar patterns can be observed
directly from the survey data using SQL.

Environment:
- SQL dialect: PostgreSQL
- Dataset: students
============================================================
*/


-- --------------------------------------------------
-- DATA OVERVIEW
--
-- Table: students
-- Key columns:
-- - inter_dom     : student type (International or Domestic)
-- - japanese_cate : Japanese language proficiency category
-- - english_cate  : English language proficiency category
-- - academic      : academic level (Undergraduate / Graduate)
-- - age           : student age
-- - stay          : length of stay in years
-- - todep         : depression score (PHQ-9)
-- - tosc          : social connectedness score (SCS)
-- - toas          : acculturative stress score (ASISS)
-- --------------------------------------------------


-- --------------------------------------------------
-- INITIAL DATA INSPECTION
-- --------------------------------------------------

-- Preview all records in the dataset
SELECT *
FROM students;


-- --------------------------------------------------
-- ANALYSIS FOCUS
--
-- Research question:
-- Does the length of stay impact mental health outcomes
-- for INTERNATIONAL students?
--
-- Metrics analysed:
-- - Depression (PHQ-9)
-- - Social Connectedness (SCS)
-- - Acculturative Stress (ASISS)
--
-- Only international students are included.
-- --------------------------------------------------


-- --------------------------------------------------
-- AGGREGATED MENTAL HEALTH METRICS BY LENGTH OF STAY
-- --------------------------------------------------

SELECT
    stay,
    COUNT(inter_dom) AS count_int,
    ROUND(AVG(todep), 2) AS average_phq,
    ROUND(AVG(tosc), 2) AS average_scs,
    ROUND(AVG(toas), 2) AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC
LIMIT 9;


-- --------------------------------------------------
-- RESULT INTERPRETATION (SUMMARY)
--
-- Observations:
-- - Depression scores tend to increase with longer stays
--   after an initial adjustment period
-- - Social connectedness generally improves over time,
--   suggesting gradual integration
-- - Acculturative stress remains high for longer stays,
--   indicating sustained cultural pressure
--
-- These findings align with published research suggesting
-- that international students face persistent mental health
-- challenges, influenced by both time and social factors.
-- --------------------------------------------------