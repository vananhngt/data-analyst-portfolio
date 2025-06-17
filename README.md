# Data Analyst Portfolio: Van Anh Nguyenova

## About

Hi, I’m Van Anh! I’m currently completing my MSc in Business Analytics at Imperial College London. I love using data to uncover insights, solve real-world problems, and turn messy datasets into clear, meaningful stories.

Ever since elementary school, I’ve had a natural interest in numbers. During my undergraduate studies, I especially enjoyed modules like Statistics and Econometrics, which led me to pursue a master’s focused on data science. Over the past year, I’ve gained hands-on experience in machine learning, optimization, decision modeling, and causal inference techniques. Now, I’m eager to apply these skills in a data analyst or data specialist role.

I’m a curious and determined person, quick to learn and passionate about continuous growth. Whatever I commit to, I follow through with dedication and focus. I hope this portfolio reflects some of that energy and passion: it showcases selected projects from my master’s studies and tracks my progress across data analytics and data science topics.

Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/van-anh-nguyenov%C3%A1).

## Table of Contents

- [About](#about)
- [Portfolio Projects](#portfolio-projects)
  - [Python](#python)
    - [Organizational Communication Network Analysis](#organizational-communication-network-analysis)
    - [Data-Driven Customer Segmentation](#data-driven-customer-segmentation)
  - [R](#r)
    - [Titanic Survival Analysis](#titanic-survival-analysis)
    - [Decoding Yelp Success in Las Vegas](#decoding-yelp-success-in-las-vegas)
    - [Lettuce Demand Forecasting for a Fast-Food Restaurant Chain](#lettuce-demand-forecasting-for-a-fast-food-restaurant-chain)
    - [Text Analytics on Earnings Calls](#text-analytics-on-earnings-calls)
  - [SQL](#sql)
    - [Customer Insights & Operational Analytics with SQL](#customer-insights--operational-analytics-with-sql)
  - Tableau
  - Power BI


## Portfolio Projects

### Python

#### Organizational Communication Network Analysis

- **Goal:**  Identify the leaders and opinion-makers within a student cohort.

- **Description:**  Based on email exchange data, two directed networks were constructed: one representing messages sent and the other representing messages received. The analysis aimed to distinguish individuals who actively initiate communication (opinion-makers) from those who are frequently contacted (leaders), while also uncovering deeper structural insights into the cohort’s communication dynamics.

- **Skills / Tools Used:**  Python (NetworkX, pandas), centrality metrics (degree, eigenvector, betweenness, closeness), clustering coefficient, data cleaning 

- **Results & Insights:**  The analysis identified individuals who actively initiated conversations, as well as those frequently sought out and trusted by others. A key individual was found to serve as a connector between two distinct clusters, highlighting a bridging role across subgroups. Overall, the communication structure appeared decentralized, with influence distributed among multiple prominent figures rather than concentrated in a single leader.

- **Deliverables:**
  - [Organizational Network Analysis.pdf](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Organizational%20Network%20Analysis/Organizational%20Network%20Analysis.pdf)
  - [Organizational Network Analysis.ipynb](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Organizational%20Network%20Analysis/Organizational%20Network%20Analysis.ipynb)


#### Data-Driven Customer Segmentation
- **Goal:** To identify distinct customer segments based on demographic and behavioral data.

- **Description:** This project involved applying K-means and hierarchical clustering techniques on two customer datasets: one clean and one with added noise. Z-score normalization was applied to numerical variables, followed by experimentation with different feature combinations. Cluster quality was evaluated using heuristic methods, and visualizations were used to interpret the clusters and explore the influence of gender.

- **Skills / Tools Used:** Python (scikit-learn, pandas, seaborn, matplotlib)

- **Results & Insights:** The analysis revealed meaningful customer clusters, with income and score proving to be strong discriminators. Gender distribution within clusters helped interpret demographic differences. Hierarchical clustering on the noisy dataset highlighted how noise can obscure segment boundaries. Including gender as a feature was found to slightly refine segmentation. These insights could support personalized marketing and improved targeting strategies.

- **Deliverables:**
  - [Customer Segmentation.html](https://vananhngt.github.io/data-analyst-portfolio/Customer_Segmentation.html)
  - [Customer Segmentation.ipynb](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Customer%20Segmentation.ipynb)



### R

#### Titanic Survival Analysis

- **Goal:** Explore how factors like gender, age, family size, and socio-economic class influenced passenger survival during the Titanic disaster.

- **Description:** Using the `titanic_train` dataset, this project conducts a thorough exploratory analysis with R.  The study investigates survival patterns based on gender, age, ticket fare, family presence, and class. Key visualizations include bar charts, density plots, ridge plots, and box plots highlighting relationships between features and survival outcomes.

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

- **Goal:** Optimize inventory planning by forecasting short-term lettuce demand across multiple restaurant locations.

- **Description:** This project involved end-to-end forecasting of lettuce consumption using internal transactional data from a fast-food restaurant chain. Multiple datasets, including POS transactions, recipes, ingredients, and store metadata, were merged to compute daily lettuce usage. Time series models (ETS and ARIMA) were applied to forecast 14-day demand at the store level, followed by model comparison and selection per location.

- **Skills / Tools Used:** R (tidyverse, forecast, tseries, ggplot2, patchwork), time series modeling (ETS, ARIMA), data wrangling

- **Results & Insights:** Holt-Winters and ARIMA models were evaluated side-by-side across four stores. ETS(A,N,A) outperformed others in two cases due to its adaptability to seasonal patterns, while ARIMA models yielded stronger accuracy in stores with noisier demand. Each store was assigned its optimal model, and forecasts were compiled into a daily table to support operational decisions. The project demonstrated how integrated data and time series methods can drive ingredient-level forecasting for improved supply chain efficiency.

- **Deliverables:**
  - [Lettuce Demand Forecasting.html](https://vananhngt.github.io/data-analyst-portfolio/Lettuce_Demand_Forecasting.html)
  - [Lettuce Demand Forecasting.Rmd](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Lettuce%20Demand%20Forecasting.Rmd)

#### Text Analytics on Earnings Calls

- **Goal:** Analyze earnings call transcripts to predict earnings performance, assess politeness in Q&A exchanges, and classify transcripts by fiscal quarter.

- **Description:** This project applied multiple text analytics techniques to a dataset of earnings call transcripts. The objectives included predicting whether a company would meet EPS targets using LASSO models with features like ngrams and word embeddings, comparing question and answer styles based on politeness markers, and building a multinomial classifier to predict the quarter of a transcript based on early answers. 

- **Skills / Tools Used:** R (text2vec, quanteda, spacyr, glmnet, tidymodels), text preprocessing, LASSO regression, Word2Vec embeddings

- **Results & Insights:** The analysis showed that LASSO models combining ngram and Word2Vec features outperformed benchmark methods in predicting both disputed complaints and earnings-per-share (EPS) outcomes. Politeness analysis revealed significant differences in the phrasing of questions and answers, offering valuable insight into the conversational dynamics of earnings calls. Additionally, a multinomial classification model predicted the fiscal quarter of a transcript, highlighting temporal patterns in language usage.

- **Deliverables:**
  - [Text Analytics on Earnings Calls.pdf](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Text%20Analytics%20on%20Earnings%20Calls/Text%20Analytics%20on%20Earnings%20Calls.pdf)
  - [Text Analytics on Earnings Calls.Rmd](https://github.com/vananhngt/data-analyst-portfolio/blob/main/Text%20Analytics%20on%20Earnings%20Calls/Text%20Analytics%20on%20Earnings%20Calls.Rmd)


### SQL 

#### Customer Insights & Operational Analytics with SQL

- **Goal:** Analyze customer behavior, film rentals, and staff/store performance on a real-world database schema.

- **Description:** This project involved analyzing a relational film rental database to uncover insights into customer behavior, rental trends, staff performance, and genre popularity. Through a series of structured SQL queries, we applied techniques such as joins, common table expressions (CTEs), aggregations, filters, and window functions to answer common business questions. Key focus areas included identifying each customer's most-watched genre, evaluating which staff members generated the most rentals, and determining top-performing films by store.

- **Skills / Tools Used:** SQL (PostgreSQL syntax), CTEs, subqueries, joins

- **Results & Insights:** We identified the most-watched film genres for each customer, enabling personalized marketing strategies. By leveraging window functions, we tracked cumulative payments and rental activity over time, offering a dynamic view of customer engagement. Additionally, we pinpointed the top-rented films in each store, informing inventory and promotional decisions. The queries also uncovered customers with incomplete transactions, highlighting potential issues in the payment process that could be addressed to improve operational efficiency.

- **Deliverables:**
  - [DVD Rental.sql](https://github.com/vananhngt/data-analyst-portfolio/blob/main/DVD%20Rental.sql)



