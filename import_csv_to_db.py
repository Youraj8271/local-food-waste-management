import pandas as pd
from database import get_connection

def import_data():
    conn = get_connection()
    pd.read_csv("data/providers_data.csv").to_sql("Providers", conn, if_exists="replace", index=False)
    pd.read_csv("data/receivers_data.csv").to_sql("Receivers", conn, if_exists="replace", index=False)
    pd.read_csv("data/food_listings_data.csv").to_sql("Food_Listings", conn, if_exists="replace", index=False)
    pd.read_csv("data/claims_data.csv").to_sql("Claims", conn, if_exists="replace", index=False)
    conn.close()

if __name__ == "__main__":
    import_data()
    print("Data imported successfully.")
