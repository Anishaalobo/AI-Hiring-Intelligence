# AI Hiring Intelligence: AI/ML Job Market Analysis (2026)

## Project Overview
An exploratory data analytics project investigating AI/ML job demand, skill requirements, experience expectations, hiring companies and geographic patterns using job-posting data from March and April 2026.

## Objectives
- Measure AI/ML roles as a share of all job postings.
- Compare AI/LLM engineering roles with traditional ML engineering roles.
- Identify skill themes associated with each role group.
- Examine experience requirements in AI/ML postings.
- Compare AI/ML hiring activity across companies and metro areas.

## Tools and Technologies
- Python
- SQL
- DuckDB
- Pandas
- Matplotlib
- Jupyter Notebook

## Key Findings
- AI/ML roles accounted for approximately 11–12% of postings in the March–April 2026 dataset.
- Orchestration appeared much more frequently in AI/LLM-only postings than in ML-only postings.
- Verification was common in both role groups.
- AI/ML hiring patterns varied by company and metro area.
- The available experience data suggested that many AI/ML roles required several years of prior experience.

## Project Structure
```text
AI_Hiring_Intelligence/
├── data/
│   ├── unified_core.parquet
│   └── [exported analysis CSV files]
├── sql/
│   └── hiring_analysis.sql
├── ai_hiring.duckdb
├── 01_data_exploration.ipynb
└── README.md
```

## Methodology
The project uses DuckDB SQL to query the Parquet dataset and Python for analysis and visualization. AI/ML roles are classified using the dataset's `role_families` field, including `ai_llm_engineer` and `ml_engineer`.

## Limitations
- The analysis describes the available dataset, not the entire job market.
- March and April 2026 are the main comparison period.
- Differences in data sources limit direct comparisons with 2024.
- Remote-work status was not useful as a differentiator in the available data.
- Skill themes may overlap within the same job posting.

## Disclaimer
This project is for exploratory and educational analytics. Results reflect the available job-posting sample and should not be interpreted as a complete representation of hiring across the industry.