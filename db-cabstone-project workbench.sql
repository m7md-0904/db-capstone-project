CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(255) NOT NULL,
    ContactNumber VARCHAR(20),
    Email VARCHAR(255) UNIQUE
);

-- Menus Table
CREATE TABLE Menus (
    MenuID INT PRIMARY KEY AUTO_INCREMENT,
    MenuItemsID INT,
    MenuName VARCHAR(255) NOT NULL,
    Cuisine VARCHAR(255),
    FOREIGN KEY (MenuItemsID) REFERENCES MenuItems(MenuItemsID)
);

-- MenuItems Table
CREATE TABLE MenuItems (
    MenuItemsID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(255),
    StarterName VARCHAR(255),
    DesertName VARCHAR(255)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    MenuID INT,
    CustomerID INT,
    TotalCost DECIMAL(10,2),
    FOREIGN KEY (MenuID) REFERENCES Menus(MenuID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);