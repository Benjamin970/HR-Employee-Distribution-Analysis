# HR-Employee-Distribution-Analysis

## Project Overview

This HR analytics project analyzed employee distribution across demographics, departments, and locations using MySQL and Power BI. Key findings revealed diversity gaps (racial/gender imbalances), regional clustering in Midwest states, and high turnover in compliance roles. The workforce skewed middle-aged (25-54) and office-centric, with underrepresentation in non-conforming genders and remote work. Recommendations included targeted diversity hiring, retention programs for high-attrition departments, and expanded remote policies. The analysis provides actionable insights for strategic workforce planning and inclusive HR practices.

## Report Preview
![Screenshot 2025-04-15 191847](https://github.com/user-attachments/assets/8e9f98b9-f76a-483d-9247-ab2a05b8a780)
![Screenshot 2025-04-15 191934](https://github.com/user-attachments/assets/8d5e97e6-1c64-4b29-84f5-25509f0c0939)
![Screenshot 2025-04-15 192024](https://github.com/user-attachments/assets/0d77e92b-760f-4da5-b881-7f8f26ec77eb)

### Data Source
The analysis was conducted using anonymized, public open-source HR datasets. These datasets included employee demographic information (age, gender, race), employment details (department, job title, hire/termination dates), and location data. All personally identifiable information (PII) was removed to ensure privacy compliance

## Tools
- MySQL
- Power BI

## Data Cleaning and Preparation
The raw dataset was cleaned and prepared using MySQL to ensure accuracy and consistency for analysis. Key steps included:

1. Standardizing Formats: Converting dates (birthdate, hire_date, termination_date) into a uniform format.
2. Handling Missing/Invalid Data: Filtering out records with incomplete or inconsistent entries (e.g., missing hire dates).
3. Deriving New Variables: Calculating age from birthdates and tenure from hire/termination dates.
4. Data Validation: Removing duplicates and correcting inconsistencies (e.g., mislabeled departments).
5. The cleaned dataset was then structured for analysis in Power BI, enabling dynamic visualizations and deeper workforce insights.

## Data Analysis
The cleaned dataset was analyzed to uncover key workforce insights across multiple dimensions:

1. Demographic Analysis
   - Race & Gender Diversity: Identified underrepresentation of minority racial groups (Hispanic, Black, Asian) and non-conforming genders (<3%).
   - Age Distribution: Workforce skewed toward mid-career employees (25–54), with limited representation of younger (18–24) and older (55+) workers.

2. Departmental & Role Trends
   - Turnover Rates: Highest in Auditing (0.18) and Legal (0.15), suggesting burnout or role misalignment.
   - Job Title Concentration: Dominated by support roles (e.g., Research Assistants, HR Analysts), with fewer senior/technical positions.

3. Geographic & Work Location Insights
   - Regional Clusters: 75% of employees concentrated in HQ (Ohio, Pennsylvania, Illinois, Michigan); remote work limited to 25%.
   - Global Gaps: Minimal presence in Africa/South America, highlighting geographic diversity gaps.

4. Temporal Trends
   - Hiring Growth: Rapid expansion from 2010–2020, peaking in 2015, followed by steady workforce increases.

Key Takeaway: The analysis revealed systemic gaps in diversity, retention, and geographic reach, informing targeted HR strategies.

## Techniques
- SQL Queries: Aggregated metrics (e.g., turnover by department, age/gender distributions).
- Power BI: Interactive dashboards to visualize trends (e.g., choropleth maps for geographic distribution).

## Results and Findings
1. Diversity Gaps
 - Race: 72% White employees, with significant underrepresentation of Hispanic (8%), Black (6%), and Asian (5%) groups.
 - Gender: Male-dominated workforce (50.9% male vs. 46.2% female); non-conforming employees made up only 2.75%.
 - Age: 68% of employees aged 25–44, while younger (18–24) and older (55+) workers comprised just 5% and 7%, respectively.

2. Workforce Distribution
   - Geographic: 75% of employees based in HQ (Ohio, Pennsylvania, Illinois, Michigan); only 24.75% worked remotely.
   - Global Presence: 92% in North America/Europe; minimal representation in Africa/South America (<1%).

3. Turnover & Retention
   - High-Attrition Departments: Auditing (18% turnover) and Legal (15%)—double the company average (12%).
   - Stable Teams: Engineering, HR, and Sales maintained moderate turnover (~12%).

4. Role & Seniority Trends
   - Top Roles: Research Assistants, Business Analysts, and HR support roles dominated.
   - Leadership Gap: Only 3% of top 10 job titles were senior/managerial positions.

5. Hiring Trends (2000–2020)
   - Growth Phase: Employee count surged by 96% from 2015–2020 after gradual increases (2005–2015).

Key Takeaways
   - Diversity Deficit: Workforce lacks racial, gender, and age diversity, risking inclusivity and innovation.
   - Retention Risks: High turnover in compliance roles (Auditing/Legal) signals burnout or cultural mismatches.
   - Geographic Rigidity: Over-reliance on HQ locations limits talent pool diversity and remote-work scalability.
   - Career Pipeline Gaps: Few senior roles suggest flat hierarchies or barriers to advancement.

## Recommendations
1. Enhance Diversity, Equity & Inclusion (DEI)
   - Recruitment: Partner with HBCUs, Hispanic-serving institutions, and LGBTQ+ organizations to attract underrepresented talent.
   - Metrics: Set annual diversity KPIs (e.g., 15% increase in minority hires) and publish progress reports.
   - Inclusive Policies: Expand gender identification options in HR systems and mandate bias training for hiring panels.
Impact: Mitigates systemic underrepresentation and fosters innovation through diverse perspectives.

2. Reduce Turnover in High-Attrition Roles
   - Auditing/Legal Interventions:
      -Conduct "stay interviews" to identify pain points (e.g., workload, tools).
      -Implement job rotations or 4-day workweeks to combat burnout.
   - Retention Programs: Launch mentorship initiatives and career pathing for mid-level roles (e.g., Research Assistants).
Impact: Lowers turnover costs and stabilizes compliance-critical teams.

3. Optimize Geographic Workforce Strategy
   - Remote Work Expansion: Pilot remote roles in underrepresented regions (e.g., Africa/South America) to tap global talent.
   - Hub Diversification: Open satellite offices in high-growth markets (e.g., Georgia, Texas) to reduce HQ overreliance.
Impact: Broadens talent pools and improves resilience to location-based disruptions.

4. Address Age & Career Pipeline Gaps
   - Youth Pipeline: Create paid apprenticeships for 18–24-year-olds in high-turnover departments.
   - Senior Talent Retention: Offer phased retirement (part-time roles) for employees aged 55+.
   - Leadership Development: Define clear promotion tracks (e.g., "Analyst II → Manager") to reduce role stagnation.
Impact: Balances workforce demographics and secures institutional knowledge.

5. Leverage Data for Continuous Improvement
   - Real-Time Dashboards: Monitor diversity, turnover, and remote-work adoption via Power BI.
   - Annual Audits: Reassess progress against benchmarks and adjust strategies as needed.
Impact: Ensures accountability and agility in HR decision-making.

## Limitations
While this HR analysis provides valuable insights, several limitations should be considered when interpreting the findings and implementing recommendations:

1. Data Granularity & Completeness
   - Lack of Contextual Variables: Absence of compensation, performance, or employee satisfaction data limits deeper analysis of turnover drivers (e.g., pay disparities, engagement levels).
   - Underreporting: Non-conforming gender representation (2.75%) may be artificially low due to restrictive HR system options or employee discomfort disclosing.

2. Temporal & Scope Constraints
   - Snapshot Data: The dataset reflects a single time period, masking seasonal or cyclical trends (e.g., post-pandemic hiring surges).
   - Excluded Metrics: No analysis of promotions, internal mobility, or part-time workers, which could reveal career progression barriers.

3. Geographic & Industry Benchmarks
   - No External Comparisons: Findings lack benchmarking against industry peers or regional labor demographics (e.g., is 72% White employees atypical for the sector?).
   - Ambiguous Location Tags: "Headquarters" vs. "Remote" classifications may not capture hybrid work models or role-specific constraints.

4. Methodological Constraints
   - SQL-Derived Age Calculations: Age values based on birth year may misclassify employees near year-end birthdays.
   - Attribution Gaps: High turnover in Auditing/Legal could reflect industry norms (e.g., regulatory pressures) rather than internal issues.

5. Cultural & Systemic Biases
   - Self-Reporting Limits: Race/gender data may not account for multiracial identities or cultural differences in self-identification.
   - Unmeasured Biases: Hiring/promotion disparities could stem from unobserved factors (e.g., network effects, unconscious bias in interviews).

