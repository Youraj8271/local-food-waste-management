# 🍛 Local Food Wastage Management System

Helping connect food providers with those in need 🙏  
**Made with ❤️ by [Youraj Kumar](mailto:youraj_2412res154@iitp.ac.in) | IIT Patna**

---

## 📌 Overview

This system helps reduce food wastage by connecting providers like restaurants, households, and businesses with receivers such as NGOs, individuals, and communities in need.

---

## ⭐ Features

⭐ 🔹 Register Donors and Receivers  
⭐ 🔹 Add and Track Food Listings  
⭐ 🔹 Filter/Search Food Listings by Name, Type, or Location  
⭐ 🔹 SQL Query Analysis (15 ready-made SQL queries)  
⭐ 🔹 Visual Analytics with Pie & Bar Charts  
⭐ 🔹 Contact Providers directly  
⭐ 🔹 Clean and interactive UI with Streamlit  
⭐ 🔹 SQLite backend with CSV import support

---

## 📊 Technologies Used

- **Python 3.9+**  
- **Streamlit** for web interface  
- **Pandas** for data manipulation  
- **SQLite** for database  
- **Matplotlib** for visualization

---

## 🗂️ Folder Structure

local-food-waste-project/
│
├── app.py # Main Streamlit app
├── database.py # DB connection & table creation
├── create_tables.sql # SQL schema
├── import_csv_to_db.py # CSV import script
├── food_waste.db # SQLite database
├── data/ # CSV files
│ ├── providers_data.csv
│ ├── receivers_data.csv
│ ├── food_listings_data.csv
│ └── claims_data.csv
├── requirements.txt # Required Python packages
└── README.md # This file


---

## 🚀 How To Run

```bash
# Install dependencies
pip install -r requirements.txt

# Import sample data (optional)
python import_csv_to_db.py

# Run the app
streamlit run app.py
