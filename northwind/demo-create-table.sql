CREATE TABLE Advertisements (
  AdId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  Title TEXT NOT NULL,
  MagicCode TEXT NOT NULL UNIQUE,
  PercentOff REAL NOT NULL
);

INSERT INTO Advertisements (
  Title,
  MagicCode,
  PercentOff
)
VALUES 
( "5% off at checkout", "5OFFCHECKOUT", 5 ),
( "10% off at checkout", "10OFFCHECKOUT", 10 ),
( "15% off at checkout", "15OFFCHECKOUT", 15 );