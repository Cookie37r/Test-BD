CREATE TABLE Types (
  ID_type int identity (1,1) NOT NULL,
  Type varchar (100) NOT NULL,
  PRIMARY KEY (ID_type),
);

CREATE TABLE Tovar (
  ID_tovar int identity (1,1) NOT NULL,
  ID_type int NOT NULL,
  Name varchar (150) NOT NULL,
  Manufacturer varchar (100) NOT NULL,
  Opisanie varchar (700) NOT NULL,
  Cost int NOT NULL,
  PRIMARY KEY (ID_tovar),
  FOREIGN KEY (ID_type) REFERENCES Types(ID_type),
);

CREATE TABLE Users (
  ID_user int identity (1,1) NOT NULL,
  Login varchar (70) NOT NULL,
  Password varchar (70) NOT NULL,
  Full_name varchar (200) NOT NULL,
  PRIMARY KEY (ID_user)
);

CREATE TABLE Zakaz (
  ID_zakaz int identity (1,1) NOT NULL,
  ID_user int NOT NULL,
  ID_tovar int NOT NULL,
  Location varchar (300) NOT NULL,
  PRIMARY KEY (ID_zakaz),
  FOREIGN KEY (ID_user) REFERENCES Users(ID_user),
  FOREIGN KEY (ID_tovar) REFERENCES Tovar(ID_tovar)
);

CREATE TABLE Admin (
  ID_admin int identity (1,1) NOT NULL,
  Login varchar (70) NOT NULL,
  Password varchar (70) NOT NULL,
  PRIMARY KEY (ID_admin)
);

CREATE TABLE Meneger (
  ID_meneger int identity (1,1) NOT NULL,
  Login varchar (70) NOT NULL,
  Password varchar (70) NOT NULL,
  PRIMARY KEY (ID_meneger)
);

