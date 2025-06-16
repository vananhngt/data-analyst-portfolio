# Data Analyst Portfolio: Van Anh Nguyenova

## About

Hi, I’m Van Anh! I’m currently completing my MSc in Business Analytics at Imperial College London. I love using data to uncover insights, solve real-world problems, and turn messy datasets into clear, meaningful stories.

Ever since elementary school, I’ve had a natural interest in numbers. During my undergraduate studies, I especially enjoyed modules like Statistics and Econometrics, which led me to pursue a master’s focused on data science. Over the past year, I’ve gained hands-on experience in machine learning, optimization, decision modeling, and causal inference techniques. Now, I’m eager and driven to apply these skills in a data analyst or data specialist role.

I’m a curious and determined person, quick to learn and passionate about continuous growth. Whatever I commit to, I follow through with dedication and focus. I hope this portfolio reflects some of that energy and passion: it showcases selected projects from my master’s studies and tracks my progress across data analytics and data science topics.


## Table of Contents

- [About](#about)
- [Portfolio Projects](#portfolio-projects)
  - [Python](#python)
    - [Organizational Communication Network Analysis](#organizational-communication-network-analysis)
    - [Data-Driven Customer Segmentation: A Clustering Approach](#data-driven-customer-segmentation-a-clustering-approach)
  - [R](#r)
    - [Titanic Survival Analysis](#titanic-survival-analysis)
    - [Decoding Yelp Success in Las Vegas](#decoding-yelp-success-in-las-vegas)
    - [Lettuce Demand Forecasting for a Fast-Food Restaurant Chain](#lettuce-demand-forecasting-for-a-fast-food-restaurant-chain)
  - [SQL](#sql)
    - [Customer Insights & Operational Analytics with SQL](#customer-insights--operational-analytics-with-sql)


## Portfolio Projects

### Python

#### Organizational Communication Network Analysis

- **Goal:**  To explore how demographic factors, family size, and socio-economic class influenced passenger survival during the Titanic disaster.

- **Description:**  Based on email exchange data, two directed networks were constructed — one representing messages sent and the other representing messages received. The analysis aimed to distinguish individuals who actively initiate communication (opinion-makers) from those who are frequently contacted (leaders), while also uncovering deeper structural insights into the cohort’s communication dynamics.

- **Skills / Tools Used:**  Python (NetworkX, pandas), graph construction, centrality metrics (degree, eigenvector, betweenness, closeness), clustering coefficient, data cleaning 

- **Results & Insights:**  The analysis identified individuals who actively initiated conversations, as well as those frequently sought out and trusted by others. A key individual was found to serve as a connector between two distinct clusters, highlighting a bridging role across subgroups. Overall, the communication structure appeared decentralized, with influence distributed among multiple prominent figures rather than concentrated in a single leader.

- **Deliverables:**
  - [Organizational Network Analysis.pdf](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Organizational%20Network%20Analysis/Organizational%20Network%20Analysis.pdf)
  - [Organizational Network Analysis.ipynb](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Organizational%20Network%20Analysis/Organizational%20Network%20Analysis.ipynb)


#### Data-Driven Customer Segmentation: A Clustering Approach
- **Goal:** To identify distinct customer segments based on demographic and behavioral data using clustering algorithms, and evaluate the effect of feature selection and noise on cluster quality.

- **Description:** This project involved applying K-means and hierarchical clustering techniques on two customer datasets—one clean and one with added noise. The clean dataset included demographic features such as age, income, and score, while the noisy dataset included four additional synthetic features. Z-score normalization was applied to numerical variables, followed by experimentation with different feature combinations. Cluster quality was evaluated using heuristic methods, and visualizations were used to interpret the clusters and explore the influence of gender.

- **Skills / Tools Used:** Python (scikit-learn, pandas, seaborn, matplotlib), data visualization

- **Results & Insights:** The analysis revealed meaningful customer clusters, with income and score proving to be strong discriminators. Gender distribution within clusters helped interpret demographic differences. Hierarchical clustering on the noisy dataset highlighted how noise can obscure segment boundaries. Including gender as a feature was found to slightly refine segmentation. These insights could support personalized marketing and improved targeting strategies.

- **Deliverables:**
  - [Customer Segmentation.html](https://vananhngt.github.io/data-analyst-portfolio/Customer_Segmentation.html)
  - [Customer Segmentation.ipynb](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Customer%20Segmentation.ipynb)



### R

#### Titanic Survival Analysis

- **Goal:** Explore how factors like gender, age, family size, and socio-economic class influenced passenger survival during the Titanic disaster.

- **Description:** Using the `titanic_train` dataset, this project conducts a thorough exploratory analysis with R.  The study investigates survival patterns based on gender, age, ticket fare, family presence, and class. Key visualizations include bar charts, density plots, ridge plots, and box plots highlighting relationships between features and survival outcomes. A custom variable for family size was introduced and segmented into categories to evaluate its impact.

- **Skills / Tools Used:** R (ggplot2, dplyr, ggridges), data wrangling, EDA, Quarto

- **Results & Insights:** The analysis revealed that female passengers and children under the age of 10 had significantly higher survival rates. Passengers traveling in small families tended to have better outcomes compared to those traveling alone or in large family groups. Higher ticket fares, often associated with first-class accommodations, were strongly linked to increased chances of survival. Additionally, clear differences were observed in the distributions of age and fare between survivors and non-survivors, highlighting the influence of both demographic and socio-economic factors on survival outcomes.

- **Deliverables:**
  - [Titanic Survival Analysis.html](https://vananhngt.github.io/data-analyst-portfolio/Titanic-Survival-Analysis.html)
  - [Titanic Survival Analysis.qmd](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Titanic%20Survival%20Analysis.qmd)


#### Decoding Yelp Success in Las Vegas

- **Goal:** Help prospective restaurant owners make data-driven decisions on concept and location using Yelp reviews and business data.

- **Description:** The project involved analyzing Yelp's publicly available data to uncover what contributes to high ratings and long-term success in Las Vegas restaurants. Exploratory and predictive techniques were used to evaluate restaurant categories, geographic performance, review patterns, and closure risks. The findings focus on how customer experience, value, online engagement, and location affect success.

- **Skills / Tools Used:** R (tidyverse, ggplot2, sentiment analysis), data wrangling, EDA

- **Results & Insights:** The analysis revealed that brunch and breakfast restaurants showed the highest potential in terms of customer engagement and long-term viability. Among various geographic locations, the Southwest and Southeast regions of Las Vegas emerged as particularly favorable for opening new restaurants. Establishments that demonstrated strong service quality, high food ratings, and active Yelp engagement were found to have a significantly lower risk of closure. These insights supported a data-driven recommendation presented to a simulated client.

- **Deliverables:**
  - [Decoding Yelp Success in Las Vegas.html](https://vananhngt.github.io/data-analyst-portfolio/Decoding_Yelp_Success_in_Las_Vegas.html)
  - [Decoding Yelp Success in Las Vegas.Rmd](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Decoding%20Yelp%20Success%20in%20Las%20Vegas.Rmd)

#### Lettuce Demand Forecasting for a Fast-Food Restaurant Chain

- **Goal:** Optimize inventory planning by forecasting short-term lettuce demand across multiple restaurant locations using time series models.

- **Description:** This project involved end-to-end forecasting of lettuce consumption using internal transactional data from a fast-food restaurant chain. Multiple datasets—including POS transactions, recipes, ingredients, and store metadata—were merged to compute daily lettuce usage. A robust preprocessing pipeline standardized units and connected sub-recipes to main recipes. Time series models (ETS and ARIMA) were applied to forecast 14-day demand at store level, followed by model comparison and selection per location.

- **Skills / Tools Used:** R (tidyverse, forecast, tseries, ggplot2, patchwork), time series modeling (ETS, ARIMA), data wrangling, 

- **Results & Insights:** Holt-Winters and ARIMA models were evaluated side-by-side across four stores. ETS(A,N,A) outperformed others in two cases due to its adaptability to seasonal patterns, while ARIMA models yielded stronger accuracy in stores with noisier demand. Each store was assigned its optimal model, and forecasts were compiled into a daily table to support operational decisions. The project demonstrated how integrated data and time series methods can drive ingredient-level forecasting for improved supply chain efficiency.

- **Deliverables:**
  - [Lettuce Demand Forecasting.html](https://vananhngt.github.io/data-analyst-portfolio/Lettuce_Demand_Forecasting.html)
  - [Lettuce Demand Forecasting.Rmd](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Lettuce%20Demand%20Forecasting.Rmd)


### SQL 

#### Customer Insights & Operational Analytics with SQL

**Goal:** Analyze customer behavior, film rentals, and staff/store performance using SQL techniques on a real-world database schema.

**Description:** This project involved analyzing a relational film rental database to uncover insights into customer behavior, rental trends, staff performance, and genre popularity. Through a series of structured SQL queries, we applied techniques such as joins, common table expressions (CTEs), aggregations, filters, and window functions to answer real-world business questions. Key focus areas included identifying each customer's most-watched genre, evaluating which staff members generated the most rentals, and determining top-performing films by store.

**Skills / Tools Used:** SQL (PostgreSQL syntax), CTEs, subqueries, joins

**Results & Insights:** We identified the most-watched film genres for each customer, enabling personalized marketing strategies. By leveraging window functions, we tracked cumulative payments and rental activity over time, offering a dynamic view of customer engagement. Additionally, we pinpointed the top-rented films in each store, informing inventory and promotional decisions. The queries also uncovered customers with incomplete transactions, highlighting potential issues in the payment process that could be addressed to improve operational efficiency.

**Deliverables:**
  - [DVD Rental.sql](https://github.com/vananhngt/data-analyst-portfolio/blob/main/DVD%20Rental.sql)



