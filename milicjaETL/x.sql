CREATE TABLE Zatrzymanie (
    wartosc int,
    godzinaZatrzymania int NOT NULL,
    kierowca int NOT NULL,
	funkcjonariusz varchar(50) NOT NULL,
	patrol int NOT NULL,
	rodzajPojazdu int NOT NULL,
	wiekFunkcjonariusza int NOT NULL,
	wiekKierowcy int NOT NULL,
	czyUkarano BIT,
   	FOREIGN KEY (kierowca) REFERENCES Kierowcy(Nr_ewidencji_NESKM),
	FOREIGN KEY (Funkcjonariusz) REFERENCES Funkcjonariusz(Nr_ID),
	FOREIGN KEY (patrol) REFERENCES Patrol(ID)
);