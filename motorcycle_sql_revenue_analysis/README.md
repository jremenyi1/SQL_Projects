# Motorcycle Wholesale Revenue Analysis

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![Case Study](https://img.shields.io/badge/Project-Case%20Study-brightgreen)
![Data Analysis](https://img.shields.io/badge/Focus-Data%20Analysis-orange)
![Status](https://img.shields.io/badge/Status-Completed-success)

**SQL Case Study | 2025**

---

## Overview

This project analyses wholesale sales performance for a motorcycle parts company operating across three warehouses:  
**North, Central, and West**.

The goal of this analysis is to understand **true profitability** by calculating net revenue after payment fees and identifying how performance varies across:

- Warehouses
- Product lines 
- Time (month)  
 
<p align="center">
  <img src="assets/motorcycle.jpg" width="600">
</p>

> This project was completed as part of a structured learning portfolio.  
> All analysis, SQL queries, and interpretations were independently designed and written by me.

---

## Project Snapshot

- **Domain:** Automotive Sales Analytics  
- **Data Type:** Transactional sales data  
- **Population:** Motorcycle parts wholesale customers  
- **Method:** SQL aggregation & business reporting  
- **Outcome:** Net revenue insights by warehouse, product line, and month

---

## Business Problem

The company was reporting **gross revenue only**, without accounting for payment processing fees.

This led to:
- Overestimated profitability
- Limited visibility into warehouse performance
- No clear view of seasonal demand patterns

---

## Objective

Calculate **net wholesale revenue**, where:

```sql
Net Revenue = Total Sales − Payment Fee
```

And analyse it by:
- Product line
- Month
- Warehouse

---

## Dataset

Source: `sales` table (June–August 2021)

| Column | Description |
|--------|------------|
| date | Order date |
| warehouse | North, Central, West |
| client_type | Retail or Wholesale |
| product_line | Category of motorcycle parts |
| total | Order value |
| payment_fee | Transaction fee |

---

## Approach

- Filtered dataset to include **Wholesale orders only**
- Extracted month from order date
- Calculated net revenue per transaction
- Aggregated results by product line, month, and warehouse
- Ranked results to identify top-performing areas

---

## Key Insights

### Warehouse Performance

- The Central warehouse consistently outperforms North and West across nearly all product lines
- This suggests a concentration of high-value wholesale activity in the Central warehouse

### Product Performance

- Engine, Frame & body, and Suspension & traction are the highest revenue-generating product lines

### Seasonality

- Net revenue increases steadily from June to August
- August represents the peak period, indicating clear seasonal demand patterns in wholesale activity

### Overall Interpretation

The analysis highlights clear structural differences in revenue distribution across warehouses and product categories, with noticeable seasonal growth trends.

---

## Results Snapshot

### Total Wholesale Net Revenue by Warehouse

| Warehouse | Net Revenue |
|----------|------------:|
| Central | 92,207.19 |
| North | 67,329.98 |
| West | 33,829.63 |

---

### Top Product-Line Performance

| Product Line | Month | Warehouse | Net Revenue |
|--------------|-------|-----------|------------:|
| Engine | August | Central | 9,528.71 |
| Frame & body | August | Central | 8,657.99 |
| Suspension & traction | June | North | 8,065.74 |

---

### Monthly Trend

| Month | Net Revenue |
|------|------------:|
| June | 48,277.24 |
| July | 53,957.35 |
| August | 61,132.21 |

---

## SQL Logic

See `analysis.sql` for full query implementation.

---

## Business Impact

This analysis enables:

- Accurate profitability reporting
- Better warehouse resource allocation
- Identification of high-performing product lines
- Improved seasonal forecasting

---

## Skills Demonstrated

- SQL aggregation and filtering
- Time-based analysis
- Financial metric construction
- Business insight generation
- Data storytelling

---

## Repository Structure

Project overview and insights - `README.md`
Full SQL workflow - `analysis.sql` 
Images and supporting visuals - `assets/`