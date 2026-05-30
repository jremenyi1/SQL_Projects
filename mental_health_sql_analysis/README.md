# Mental Health Analysis of International Students

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![Case Study](https://img.shields.io/badge/Project-Case%20Study-brightgreen)
![Data Analysis](https://img.shields.io/badge/Focus-Data%20Analysis-orange)
![Status](https://img.shields.io/badge/Status-Completed-success)

**SQL Case Study | 2025**

---

## Overview

This project analyses mental health outcomes among international university students to understand how length of stay in a foreign country relates to:

- Depression  
- Social connectedness  
- Acculturative stress  

The analysis is based on survey data collected by a Japanese international university and focuses exclusively on international students, allowing for targeted insight into their experiences over time.

<p align="center">
  <img src="assets/mentalhealth.jpg" width="600">
</p>

> This project was completed as part of a DataCamp learning portfolio.  
> All analysis, SQL queries, and interpretations were independently designed and written by me.

---

## Project Snapshot

- **Domain:** Education & Mental Health  
- **Data Type:** Survey data  
- **Population:** International university students  
- **Method:** SQL aggregation & analysis  
- **Outcome:** Evidence-based mental health insights

---

## Research Problem

International students face unique challenges when studying abroad, including:

- Cultural adjustment
- Language barriers
- Social isolation
- Academic pressure

Previous research suggested that international students may experience higher mental health risks than domestic students, but understanding how these risks change over time is critical for effective student support.

---

## Objective

Analyse mental health indicators for international students only, grouped by length of stay, in order to:

- Identify trends in depression levels
- Assess changes in social connectedness
- Evaluate acculturative stress over time

---

## Dataset

Source table: `students`

The dataset contains survey responses from a university-led mental health study.

| Column | Description |
|------|------------|
| inter_dom | Student type (International or Domestic) |
| stay | Length of stay (years) |
| todep | Depression score (PHQ-9) |
| tosc | Social connectedness score (SCS) |
| toas | Acculturative stress score (ASISS) |

Only records where `inter_dom = 'Inter'` were included in the final analysis.

---

## Approach

- Filtered dataset to include international students only
- Grouped students by length of stay
- Calculated:
  - number of students per group
  - average depression score
  - average social connectedness score
  - average acculturative stress score
- Rounded averages to two decimal places for clarity
- Sorted results by length of stay in descending order

The analysis was performed using SQL only, reflecting real-world analytical workflows.

---

## Key Insights

### Mental Health Trends

- Depression scores tend to increase after several years of stay, suggesting cumulative psychological strain.
- Social connectedness improves gradually over time, indicating adaptation and community integration.
- Acculturative stress remains persistently high even for long-term students.

### Student Distribution

- The largest student groups are those with 6–8 years of stay, making trends in this range especially meaningful.
- Very short stays (0–2 years) show greater variability due to smaller sample sizes.
- Results for stays of 0–2 years should be interpreted cautiously due to very small sample sizes.

---

## Results Snapshot

### Average Mental Health Scores by Length of Stay  
*(International Students Only)*

| Length of Stay (Years) | Students | Avg. Depression | Avg. Social Connectedness | Avg. Acculturative Stress |
|----------------------:|---------:|----------------:|--------------------------:|--------------------------:|
| 8 | 95 | 7.48 | 38.11 | 72.80 |
| 7 | 39 | 8.28 | 37.08 | 77.67 |
| 6 | 46 | 9.09 | 37.13 | 78.00 |
| 5 | 14 | 8.57 | 33.93 | 87.71 |
| 4 | 1 | 0.00 | 34.00 | 91.00 |
| 3 | 3 | 6.00 | 38.00 | 58.67 |
| 2 | 1 | 4.00 | 48.00 | 45.00 |
| 1 | 1 | 10.00 | 44.00 | 65.00 |
| 0 | 1 | 13.00 | 32.00 | 50.00 |

---

## Interpretation

The results align with existing research findings:

- Social integration improves with time, but mental health challenges do not disappear
- Acculturative stress can remain high even for long-term international students
- Support services should address long-term adaptation, not only early-stage adjustment

---

## SQL Logic

See `analysis.sql` for the full SQL workflow, including filtering, aggregation, and rounding logic used to generate the results.

---

## Impact

This analysis supports:

- Evidence-based student wellbeing initiatives
- Targeted mental health support for long-term international students
- Data-informed policy and program design at international universities

---

## Skills Demonstrated

- SQL filtering and aggregation  
- Group-based statistical analysis  
- Working with survey and health-related data  
- Translating analytical results into clear insights  
- Writing stakeholder-friendly documentation  

---

## Repository Structure

- Project overview and insights — `README.md`  
- Full SQL analysis — `analysis.sql`  
- Images and supporting assets — `assets/`