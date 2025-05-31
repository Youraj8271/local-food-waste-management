DROP TABLE IF EXISTS Providers;
CREATE TABLE Providers (
    Provider_ID INTEGER PRIMARY KEY,
    Name TEXT,
    Type TEXT,
    Address TEXT,
    City TEXT,
    Contact TEXT
);

DROP TABLE IF EXISTS Receivers;
CREATE TABLE Receivers (
    Receiver_ID INTEGER PRIMARY KEY,
    Name TEXT,
    Type TEXT,
    City TEXT,
    Contact TEXT
);

DROP TABLE IF EXISTS Food_Listings;
CREATE TABLE Food_Listings (
    Food_ID INTEGER PRIMARY KEY,
    Food_Name TEXT,
    Quantity INTEGER,
    Expiry_Date TEXT,
    Provider_ID INTEGER,
    Provider_Type TEXT,
    Location TEXT,
    Food_Type TEXT,
    Meal_Type TEXT,
    FOREIGN KEY (Provider_ID) REFERENCES Providers(Provider_ID)
);

DROP TABLE IF EXISTS Claims;
CREATE TABLE Claims (
    Claim_ID INTEGER PRIMARY KEY,
    Food_ID INTEGER,
    Receiver_ID INTEGER,
    Claim_Date TEXT,
    Status TEXT,
    FOREIGN KEY (Food_ID) REFERENCES Food_Listings(Food_ID),
    FOREIGN KEY (Receiver_ID) REFERENCES Receivers(Receiver_ID)
);
