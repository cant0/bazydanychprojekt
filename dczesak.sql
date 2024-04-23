CREATE TABLE Pracownicy (
  id_pracownika INT IDENTITY(1,1) PRIMARY KEY,
  imie NVARCHAR(50) NOT NULL,
  nazwisko NVARCHAR(50) NOT NULL,
  data_urodzenia DATE,
  stanowisko NVARCHAR(50) NOT NULL,
  numer_telefonu NVARCHAR(20),
  email NVARCHAR(100),
  adres NVARCHAR(255),
  data_zatrudnienia DATE NOT NULL,
  uprawnienia NVARCHAR(20) NOT NULL
);

CREATE TABLE Wypozyczenia (
  id_wypozyczenia INT IDENTITY(1,1) PRIMARY KEY,
  id_klienta INT NOT NULL,
  id_samochodu INT NOT NULL,
  data_wypozyczenia DATE NOT NULL,
  data_zwrotu_planowana DATE NOT NULL,
  data_zwrotu_rzeczywista DATE,
  cena_calkowita DECIMAL(10,2) NOT NULL,
  oplata_dodatkowa DECIMAL(10,2),
  miejsce_odbioru INT NOT NULL,
  miejsce_zwrotu INT NOT NULL,
  pracownik_wypozyczajacy INT,
  pracownik_odbierajacy INT,
  status NVARCHAR(20) NOT NULL,)


  CONSTRAINT FK_Płatności_Wypozyczenia FOREIGN KEY (id_wypozyczenia)
  REFERENCES Wypozyczenia(id_wypozyczenia)