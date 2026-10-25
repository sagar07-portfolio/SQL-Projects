#  Job Market Analysis Using SQL

##  Project Overview

This project focuses on analyzing job market data using SQL to understand job opportunities, salary trends, company hiring patterns, and in-demand skills.

The project uses SQL queries to extract meaningful insights from job listings and explore trends across different companies, job roles, locations, and experience levels.

##  Project Objectives

* Analyze job opportunities across different companies.
* Compare salaries for different job roles.
* Identify the most in-demand skills.
* Analyze job openings by location.
* Understand how experience levels relate to salaries.
* Practice SQL queries for real-world data analysis.

##  Tools & Technologies

* SQL
* MySQL
* Relational Database Management
* Data Analysis

##  Database Structure

### 1. Jobs Table

Stores job listing information.

| Column           | Description                |
| ---------------- | -------------------------- |
| JOB_ID           | Unique job identifier      |
| COMPANY_NAME     | Name of the company        |
| JOB_TITLE        | Job role                   |
| EXPERIENCE_LEVEL | Required experience level  |
| EMPLOYMENT_TYPE  | Type of employment         |
| LOCATION         | Job location               |
| WORK_MODE        | On-site, Hybrid, or Remote |
| SALARY           | Salary offered             |

### 2. JOB_SKILL Table

Stores skills associated with job listings.

| Column     | Description             |
| ---------- | ----------------------- |
| SKILL_ID   | Unique skill identifier |
| JOB_ID     | Related job identifier  |
| SKILL_NAME | Required skill          |

##  SQL Concepts Used

* SELECT and WHERE
* ORDER BY
* GROUP BY and HAVING
* Aggregate Functions: COUNT(), AVG(), MAX(), MIN()
* JOIN Operations
* Subqueries
* Salary Analysis
* Skill Demand Analysis

##  Key Analysis Areas

* Company-wise job opportunities
* Highest-paying job roles
* Average salary analysis
* Location-wise salary comparison
* In-demand skills across job listings
* Jobs offering salaries above the average salary

##  Key Learnings

* Designing relational database tables.
* Writing SQL queries to analyze job market data.
* Using JOINs to combine related tables.
* Applying aggregate functions to summarize data.
* Using subqueries to solve analytical problems.
* Extracting useful insights from structured data.

##  Project Files

This repository contains SQL scripts used to create tables, insert sample data, and perform job market analysis.

##  Author

**Sagar**

This project was created for learning and practicing SQL through job market analysis.

