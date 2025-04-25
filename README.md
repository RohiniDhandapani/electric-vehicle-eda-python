# 🚗 Electric Vehicle Population – EDA in Python

A Python-based exploratory data analysis (EDA) of electric vehicle (EV) registrations in Washington State. This project uncovers trends in EV types, manufacturers, model years, pricing, and geographic distribution using data visualization and geospatial mapping.

---

## 📌 Objective

Analyze EV population data to reveal patterns in vehicle types, range, price, and location.

---

## 🔧 Tools Used

- Python (Pandas, Matplotlib, Seaborn, Folium)
- Jupyter Notebook

---

## 🛠️ Data Preprocessing and Cleaning

- Handled missing values (`Electric Range`, `Base MSRP`, `Postal Code`, `City`, `County`, `Electric Utility`, `2020 Census Tract`, `Legislative District`)  
- Imputed missing numerical values using **mean** or **mode**  
- Dropped records with missing geographic coordinates (`Vehicle Location`)
- Corrected data types (e.g., converting `Postal Code`, `Electric Range`, and `Base MSRP` to integers)
- Extracted **Latitude** and **Longitude** from geographic "POINT" strings for mapping

---

## 📊 Exploratory Data Analysis (EDA) and Visualizations

This project includes a variety of visualizations to analyze EV trends across vehicle types, pricing, model years, and geographic locations.

### 📈 Visualizations

- 🥧 **Pie Chart**: Distribution of EV types  
- ⚡ **Scatter Plot**: Electric Range vs. Base MSRP  
- 🚘 **Bar Chart**: MSRP by Vehicle Make  
- 📅 **Line Plot**: Electric Range by Model Year  
- 🗺️ **Folium Map**: EV locations by manufacturer

---

## 📊 Visual Insights from the Data

### 🥧 Distribution of Electric Vehicle Type

- **Plug-in Hybrid Electric Vehicle (PHEV):** 78.4%
- **Battery Electric Vehicle (BEV):** 21.6%

> 🔍 **Insight:** PHEVs are the most common EV type in the dataset, but BEVs are gaining ground.

---

### ⚡ Electric Range vs. Base MSRP

- BEVs cluster at **200–350 miles** of range.
- PHEVs mostly have **<100 miles** of range.

> 🔍 **Insight:** Higher range is associated with BEVs, while price varies widely regardless of range.

---

### 🚘 Base MSRP by Vehicle Make

- Affordable EVs: **KIA**, **TESLA**, **SUBARU** 
- Mid-range brands: **BMW**, **VOLVO**, **MINI** 
- Premium EV: **FISKER**

---

### 📅 Electric Range by Model Year

- **BEVs show a strong upward trend** in range over the years.
- **PHEVs have plateaued** around 30–100 miles.

> 🔍 **Insight:** BEV technology has rapidly advanced in terms of range, while PHEVs show limited progress.

---



