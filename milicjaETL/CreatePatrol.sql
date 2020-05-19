

CREATE TABLE Patrol (
    ID INTEGER IDENTITY(1,1) PRIMARY KEY,
    godzinaRozpoczecia int,
	godzinaZakonczenia int,
    mData varchar(15) NOT NULL,
	czasTrwania int NOT NULL,
	lokalizacja varchar(100),
	funkcjonariusz1 varchar(50) NOT NULL,
	funkcjonariusz2 varchar(50) NOT NULL,
	funkcjonariusz3 varchar(50) NOT NULL,
	FOREIGN KEY (funkcjonariusz1) REFERENCES Funkcjonariusz(Nr_ID),
	FOREIGN KEY (funkcjonariusz2) REFERENCES Funkcjonariusz(Nr_ID),
	FOREIGN KEY (funkcjonariusz3) REFERENCES Funkcjonariusz(Nr_ID)
);