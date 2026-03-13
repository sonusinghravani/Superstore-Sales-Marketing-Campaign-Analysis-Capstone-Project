## 📌 Project Overview
This project analyzes a year-end promotional campaign for a Superstore chain, where existing customers were invited to purchase a **Gold Membership offering a 20% discount**.

The primary goal was to:
- Understand customer behavior  
- Identify high-potential customer segments  
- Build a predictive model to improve future campaign response rates  

---

## 🚀 Key Business Metrics (KPIs)

- **Total Customers:** 2,240  
- **Campaign Response Rate:** 14.91%  
- **Total Revenue Generated:** $1,356,988  
- **Average Spend per Customer:** $605.80  

---

## 🛠️ Tech Stack & Methodology

### 📊 Data Validation
- Microsoft Excel (Initial visual checks & anomaly detection)

### 🗄️ Database Management
- MySQL (Data cleaning validation & structured querying)

### 🧠 Data Analysis & Machine Learning
- Python (Jupyter Notebook)
- Pandas
- NumPy
- Scikit-learn

### 📈 Statistical Testing
- T-Test  
- ANOVA  
- Chi-Square Test  

### 📉 Data Visualization
- Power BI (Interactive Executive Dashboard)

---

## 📊 Key Insights & Findings

### 1️⃣ Customer Demographics & Behavior

- **Education Factor:**  
  - PhD holders → 20.78% acceptance rate  
  - Basic education → 9.34%

- **Family Impact:**  
  - Customers with children → $406 average spend  
  - Customers without children → $1,106 average spend  
  - 2.7x higher spending without children

- **Product Preference:**  
  - Wine & Meat categories contribute ~77% of total revenue

---

### 2️⃣ Machine Learning & Model Improvement

#### 🔎 The Challenge
The dataset was imbalanced:
- Only 14.91% customers accepted the offer

#### 🌲 Baseline Model (Random Forest)
- Accuracy: 85.86%
- Recall (Buyers): 26%
- Problem: Poor identification of actual buyers

#### ⚙️ Solution: SMOTE
Applied **SMOTE (Synthetic Minority Over-sampling Technique)**

- Recall improved from **26% → 44%**
- Better targeting capability
- More useful for marketing campaigns

---

## 💡 Strategic Recommendations

- 🎓 **VIP PhD Campaign**  
  Target PhD & Master's customers with early-access offers  

- 👨‍👩‍👧 **Family-Centric Bundles**  
  Create “Family Gold Pack” focused on Meat & Fruits  

- ⏳ **Recency Strategy**  
  Prioritize customers who purchased recently  

- 🌐 **Digital Conversion Strategy**  
  Convert 1,563 in-store shoppers to web platform users  

---

##  ⚠️ Note: Accuracy was not considered a reliable metric due to class imbalance. 
Recall and confusion matrix were prioritized to measure real buyer identification.

---

## 🎯 Business Impact
By improving buyer recall from 26% to 44%, the marketing team can 
identify 69% more potential buyers compared to the baseline model.


---
## Dashbaord Preview Link
https://github.com/sonukumardataanalyst5/Superstore-Sales-Marketing-Campaign-Analysis-Capstone-Project/blob/main/Dashboard/Sales%20Power%20Bi%20both%20Dashboard%20.pdf


## 🧑‍💻 Author

**Sonu Kumar**  
Graduate – Kalinga University (2017)  
Data Analytics with GenAI Specialist (Career 247 & NASSCOM)
