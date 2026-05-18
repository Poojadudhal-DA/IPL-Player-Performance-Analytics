# 🏏 IPL Player Performance Analytics Dashboard

A complete end-to-end data analytics project analyzing Indian Premier League (IPL) player and team performance from 2008 to 2024 using Python, SQL, and Power BI.

---

## 📌 Project Overview

This project demonstrates a full data analytics pipeline — from raw data collection to an interactive Power BI dashboard — covering every stage a data analyst handles in the real world.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python (Pandas, Matplotlib, Seaborn) | Data cleaning & visualization |
| MySQL | Database storage & querying |
| Power BI | Interactive dashboard |
| Jupyter Notebook | Exploratory data analysis |
| Kaggle | Data source |

---

## 📁 Project Structure

```
IPL_Analytics/
│
├── data/
│   ├── raw/                  ← Original Kaggle CSV files
│   │   ├── matches.csv
│   │   └── deliveries.csv
│   └── processed/            ← Cleaned data files
│       ├── matches_cleaned.csv
│       └── deliveries_cleaned.csv
│
├── python/
│   ├── 01_data_exploration.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_load_to_mysql.ipynb
│   ├── 04_visualizations.ipynb
│   ├── top_batsmen.png
│   ├── top_bowlers.png
│   ├── team_wins_season.png
│   ├── toss_win_rate.png
│   └── top_potm.png
│
├── sql/
│   └── analysis_queries.sql
│
├── dashboard/
│   └── IPL_Dashboard.pbix
│
└── README.md
```

---

## 📊 Dataset

- **Source:** [Kaggle — IPL Complete Dataset 2008–2024](https://www.kaggle.com/datasets/patrickb1912/ipl-complete-dataset-20082020)
- **matches.csv** — 1,095 matches with match-level details
- **deliveries.csv** — 260,920 ball-by-ball delivery records

---

## 🔄 Project Pipeline

### 1️⃣ Data Exploration (EDA)
- Loaded raw CSV files using Pandas
- Checked shape, columns, missing values
- Identified data quality issues

### 2️⃣ Data Cleaning
- Fixed inconsistent season formats (`2007/08` → `2007`)
- Filled missing city values using venue-city mapping
- Removed useless columns (99% empty)
- Handled null values in winner and player_of_match columns

### 3️⃣ MySQL Database Setup
- Created `ipl_analytics` database
- Loaded cleaned data into `matches` and `deliveries` tables using SQLAlchemy

### 4️⃣ SQL Analysis
- Top 10 run scorers all time
- Top 10 wicket takers
- Most IPL titles by team
- Player of the Match award leaders
- Toss decision win percentage analysis

### 5️⃣ Python Visualizations
- Top 10 batsmen bar chart
- Top 10 bowlers bar chart
- Team wins per season line chart
- Toss decision win rate bar chart
- Top 10 POTM awards bar chart

### 6️⃣ Power BI Dashboard
- KPI Cards (Total Matches, Wickets, Sixes, Fours)
- Interactive slicers (Team, Year)
- All 5 visualizations as interactive charts

---

## 📈 Key Insights

- 🏏 **V Kohli** is the all-time leading run scorer with **8,014 runs**
- 🎳 **YS Chahal** leads wicket takers with **205 wickets**
- 🏆 **CSK & MI** are joint most successful teams with **5 titles each**
- 🏅 **AB de Villiers** won the most Player of the Match awards — **25**
- 🎯 Teams that choose to **field first** win **53.86%** of the time vs **45.38%** batting first

---

## 🖥️ Dashboard Preview

![IPL Dashboard](python/ILP_Dashboard_Preview)

---

## ⚙️ How to Run This Project

### Prerequisites
- Python 3.8+
- MySQL Server
- Power BI Desktop
- Jupyter Notebook

### Steps

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/IPL_Analytics.git
cd IPL_Analytics
```

2. **Install Python dependencies**
```bash
pip install pandas numpy matplotlib seaborn sqlalchemy pymysql jupyter openpyxl
```

3. **Set up MySQL**
```sql
CREATE DATABASE ipl_analytics;
```

4. **Run notebooks in order**
```
01_data_exploration.ipynb
02_data_cleaning.ipynb
03_load_to_mysql.ipynb
04_visualizations.ipynb
```

5. **Open Power BI Dashboard**
- Open `dashboard/IPL_Dashboard.pbix` in Power BI Desktop
- Update MySQL connection with your credentials

---

## 🤝 Connect With Me

- 💼 LinkedIn: [https://www.linkedin.com/in/poojadudhal]
- 📧 Email: [poojadudhal104@gmail.com]
- 🐙 GitHub: [https://github.com/Poojadudhal-DA/IPL-Player-Performance-Analytics]

---

## 📜 License

This project is open source and available under the [MIT License](LICENSE).
