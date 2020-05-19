use milicja

CREATE TABLE Funkcjonariusz (
    ID int NOT NULL,
    imieNazwisko varchar(150) NOT NULL,
    plec varchar(13) NOT NULL,
    nrESKM int NOT NULL,
	stanowisko varchar(50) NOT NULL,
	druzyna int NOT NULL,
	dataUtworzenia date NOT NULL,
	dataWygaœniêcia date,
    PRIMARY KEY (ID)
); 

CREATE TABLE Kierowca (
    ID int NOT NULL,
    imieNazwisko varchar(150) NOT NULL,
    plec varchar(13) NOT NULL,
    nrESKM int NOT NULL,
	nrPrawaLotu int NOT NULL,
	gatunek varchar(30) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE CzasTrwania (
    ID int NOT NULL,
    czasTrwania varchar(50) NOT NULL,
	okreslenieCzasuTrwania varchar(50) NOT NULL,
	czescEtatu varchar(50) NOT NULL,
	czescDoby varchar(50) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE  Godzina(
    ID int NOT NULL,
    godzina int NOT NULL,
	poraDnia varchar(30) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE MData (
    ID int NOT NULL,
    mData date NOT NULL,
    rok int NOT NULL,
    miesiac varchar(30) NOT NULL,
	dzienMiesiaca int NOT NULL,
	dzienTygodnia varchar(30) NOT NULL,
	poraRoku varchar(30) NOT NULL,
	swieto varchar(50),
    PRIMARY KEY (ID)
);

CREATE TABLE  Lokalizacja(
    ID int NOT NULL,
    nazwa varchar(100) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE RodzajPojazdu (
    ID int NOT NULL,
    rodzajPojazdu varchar(50) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Patrol (
    ID int NOT NULL,
    godzinaRozpoczecia int NOT NULL,
	godzinaZakonczenia int NOT NULL,
    mData int NOT NULL,
	czasTrwania int NOT NULL,
	lokalizacja int NOT NULL,
	funkcjonariusz1 int NOT NULL,
	funkcjonariusz2 int NOT NULL,
	funkcjonariusz3 int NOT NULL,
	PRIMARY KEY (ID),
    FOREIGN KEY (godzinaRozpoczecia) REFERENCES Godzina(ID),
	FOREIGN KEY (godzinaZakonczenia) REFERENCES Godzina(ID),
	FOREIGN KEY (lokalizacja) REFERENCES Lokalizacja(ID),
	FOREIGN KEY (mData) REFERENCES MData(ID),
	FOREIGN KEY (czasTrwania) REFERENCES CzasTrwania(ID),
	FOREIGN KEY (funkcjonariusz1) REFERENCES Funkcjonariusz(ID),
	FOREIGN KEY (funkcjonariusz2) REFERENCES Funkcjonariusz(ID),
	FOREIGN KEY (funkcjonariusz3) REFERENCES Funkcjonariusz(ID)
);

CREATE TABLE Zatrzymanie (
    wartosc int,
    dataZatrzymania int NOT NULL,
    godzinaZatrzymania int NOT NULL,
    kierowca int NOT NULL,
	funkcjonariusz int NOT NULL,
	patrol int NOT NULL,
	lokalizacja int NOT NULL,
	rodzajPojazdu int NOT NULL,
	wiekFunkcjonariusza int NOT NULL,
	wiekKierowcy int NOT NULL,
	pensjaFunkcjonariusza int  NOT NULL,
	czyUkarano BIT,
    FOREIGN KEY (dataZatrzymania) REFERENCES MData(ID),
	FOREIGN KEY (godzinaZatrzymania) REFERENCES Godzina(ID),
	FOREIGN KEY (kierowca) REFERENCES Kierowca(ID),
	FOREIGN KEY (funkcjonariusz) REFERENCES Funkcjonariusz(ID),
	FOREIGN KEY (patrol) REFERENCES Patrol(ID),
	FOREIGN KEY (lokalizacja) REFERENCES Lokalizacja(ID),
	FOREIGN KEY (rodzajPojazdu) REFERENCES RodzajPojazdu(ID)
);

CREATE TABLE Wypadek (
    dataWypadku int NOT NULL,
    godzinaWypadku int NOT NULL,
    kierowca int NOT NULL,
	funkcjonariusz int NOT NULL,
	lokalizacja int NOT NULL,
	rodzajPojazdu int NOT NULL,
	wiekKierowcy int NOT NULL,
	liczbaOfiar int NOT NULL,
    FOREIGN KEY (dataWypadku) REFERENCES MData(ID),
	FOREIGN KEY (godzinaWypadku) REFERENCES Godzina(ID),
	FOREIGN KEY (kierowca) REFERENCES Kierowca(ID),
	FOREIGN KEY (funkcjonariusz) REFERENCES Funkcjonariusz(ID),
	FOREIGN KEY (lokalizacja) REFERENCES Lokalizacja(ID),
	FOREIGN KEY (rodzajPojazdu) REFERENCES RodzajPojazdu(ID)
);