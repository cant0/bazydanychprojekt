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

INSERT INTO Pracownicy (imie, nazwisko, data_urodzenia, stanowisko, numer_telefonu, email, adres, data_zatrudnienia ) VALUES
('Jan', 'Kowalski', '1980-01-01', 'Manager', '123456789', 'jan.kowalski@example.com', 'ul. Kwiatowa 10, Warszawa', '2015-06-01'),
('Adam', 'Nowak', '1985-02-15', 'Ksiegowy', '987654321', 'adam.nowak@example.com', 'ul. Ogrodowa 20, Krakow', '2016-07-15'),
('Piotr', 'Wisniewski', '1990-03-20', 'Specjalista IT', '234567890', 'piotr.wisniewski@example.com', 'ul. Lipowa 30, Poznan', '2017-08-20'),
('Pawel', 'Wojcik', '1982-04-25', 'Specjalista IT', '345678901', 'pawel.wojcik@example.com', 'ul. Debowa 40, Wroclaw', '2018-09-25'),
('Krzysztof', 'Kowalczyk', '1988-05-30', 'Sprzedawca', '456789012', 'krzysztof.kowalczyk@example.com', 'ul. Jesionowa 50, Gdansk', '2019-10-30'),
('Tomasz', 'Zielinski', '1995-06-10', 'Sprzedawca', '567890123', 'tomasz.zielinski@example.com', 'ul. Wierzbow 60, Lublin', '2020-11-10'),
('Marek', 'Szymanski', '1983-07-15', 'Sprzedawca', '678901234', 'marek.szymanski@example.com', 'ul. Sosnowa 70, Katowice', '2021-12-15'),
('Andrzej', 'Wozniak', '1992-08-20', 'Sprzedawca', '789012345', 'andrzej.wozniak@example.com', 'ul. Akacjowa 80, Lodz', '2022-01-20'),
('Rafal', 'Dabrowski', '1986-09-25', 'Sprzedawca', '890123456', 'rafal.dabrowski@example.com', 'ul. Topolowa 90, Szczecin', '2023-02-25'),
('Jakub', 'Lewandowski', '1993-10-30', 'Sprzedawca', '901234567', 'jakub.lewandowski@example.com', 'ul. Jodlowa 100, Bydgoszcz', '2024-03-30');

INSERT INTO Klienci (imie, nazwisko, data_urodzenia, adres, miasto, kod_pocztowy, numer_telefonu, nr_praw_jazdy, Pesel, rabat) VALUES
('Piotr','Kowalski', '1980-01-01', 'ul. Kwiatowa 10', 'Warszawa', '00-001', '123456789', 'ABC123456', '80010112345', 5),
('Jerzy','Krzek', '1985-02-15', 'ul. Ogrodowa 20', 'Kraków', '30-002', '987654321', 'DEF654321', '85021598765', 10),
('Robert','Mroczek', '1990-03-20', 'ul. Lipowa 30', 'Poznań', '60-003', '234567890', 'GHI987654', '90032023456', 7),
('Jakub','Roken', '1982-04-25', 'ul. Dębowa 40', 'Wrocław', '50-004', '345678901', 'JKL321654', '82042534567', 5),
('Krzysztof','Krawczyk', '1988-05-30', 'ul. Jesionowa 50', 'Gdańsk', '80-005', '456789012', 'MNO654987', '88053045678', 8),
('Adrian','Polak', '1995-06-10', 'ul. Wierzbow 60', 'Lublin', '20-006', '567890123', 'PQR987321', '95061056789', 3),
('Piotr','Zielinski', '1977-07-15', 'ul. Sosnowa 70', 'Katowice', '40-007', '678901234', 'STU321987', '83071567890', 10),
('Wojciech', 'Szczesny', '1988-02-20', 'ul. Akacjowa 80', 'Łódź', '90-008', '789012345', 'VWX654123', '92082078901', 7),
('Jakub', 'Blaszczykowski', '1999-11-29', 'ul. Topolowa 90', 'Szczecin', '70-009', '890123456', 'YZA987654', '86092589012', 5),
('Bartosz', 'Fabianski', '1998-12-30', 'ul. Jodłowa 100', 'Bydgoszcz', '85-010', '901234567', 'BCD321987', '93103090123', 6);

INSERT INTO dbo.Klienci (imie, nazwisko, data_urodzenia, adres, miasto, kod_pocztowy, numer_telefonu, nr_prawa_jazdy, Pesel, rabat) VALUES
('Piotr','Kowalski', '1975-12-12', 'ul. Miodowa 12', 'Gdynia', '81-601', '112233445', 'ABC123456', '80010112345', 5),
('Jerzy','Krzek', '1987-07-07', 'ul. Polna 22', 'Sopot', '81-701', '223344556', 'DEF654321', '85021598765', 10),
('Robert','Mroczek', '1992-08-18', 'ul. Klonowa 34', 'Olsztyn', '10-402', '334455667', 'GHI987654', '90032023456', 7),
('Jakub','Roken', '1984-09-29', 'ul. Brzozowa 46', 'Rzeszów', '35-604', '445566778', 'JKL321654', '82042534567', 5),
('Krzysztof','Krawczyk', '1991-10-20', 'ul. Kasztanowa 58', 'Kielce', '25-505', '556677889', 'MNO654987', '88053045678', 8),
('Adrian','Polak', '1993-11-11', 'ul. Wiśniowa 64', 'Zielona Góra', '65-001', '667788990', 'PQR987321', '95061056789', 3),
('Piotr','Zielinski', '1979-01-23', 'ul. Cisowa 72', 'Białystok', '15-111', '778899001', 'STU321987', '83071567890', 10),
('Wojciech', 'Szczesny', '1986-03-05', 'ul. Świerkowa 86', 'Częstochowa', '42-200', '889900112', 'VWX654123', '92082078901', 7),
('Jakub', 'Blaszczykowski', '2001-02-14', 'ul. Bukowa 98', 'Tarnów', '33-100', '990011223', 'YZA987654', '86092589012', 5),
('Bartosz', 'Fabianski', '1996-04-17', 'ul. Orzechowa 102', 'Opole', '45-006', '001122334', 'BCD321987', '93103090123', 6);

select id_samochodu, id_klasy from dbo.Samochody


select id_klasy, cena from dbo.Klasy_samochodow

select * from dbo.Platnosci
select * from dbo.V_Sprawdzenie_Platnosci


CREATE PROCEDURE AktualizujStanSamochodu (
    @id_samochodu INT,
    @nowy_stan NVARCHAR(20)
)
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM dbo.Samochody WHERE id_samochodu = @id_samochodu)
    BEGIN
        PRINT 'Samochód o podanym ID nie istnieje.';
        RETURN;
    END
    UPDATE dbo.Samochody
    SET stan_techniczny = @nowy_stan
    WHERE id_samochodu = @id_samochodu;
END;
GO


EXECUTE AktualizujStanSamochodu @id_samochodu = 2, @nowy_stan = 'Sprawny';


CREATE PROCEDURE Wypozycz (
    @id_klienta INT,
    @id_samochodu INT,
    @data_wypozyczenia DATE,
    @data_zwrotu_planowana DATE,
    @cena_dobowa DECIMAL(10, 2),
    @miejsce_odbioru INT,
    @miejsce_zwrotu INT,
    @pracownik_wypozyczajacy INT
)
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM dbo.Samochody WHERE id_samochodu = @id_samochodu AND dostepnosc = 'Dostepny')
    BEGIN
        PRINT 'Samochód nie jest dostępny do wypożyczenia.';
        RETURN;
    END

    INSERT INTO Wypozyczenia (
        id_klienta,
        id_samochodu,
        data_wypozyczenia,
        data_zwrotu_planowana,
        cena_dobowa,
        miejsce_odbioru,
        miejsce_zwrotu,
        pracownik_wypozyczajacy
    )
    VALUES (
        @id_klienta,
        @id_samochodu,
        @data_wypozyczenia,
        @data_zwrotu_planowana,
        @cena_dobowa,
        @miejsce_odbioru,
        @miejsce_zwrotu,
        @pracownik_wypozyczajacy
    );

    UPDATE dbo.Samochody
    SET dostepnosc = 'Niedostepny'
    WHERE id_samochodu = @id_samochodu;
END;
GO

execute Wypozycz 1, 4,'2024-04-11', '2024-04-13', 400,1,1,1


CREATE PROCEDURE Zwroc (
    @id_wypozyczenia INT,
    @data_zwrotu_rzeczywista DATE,
    @pracownik_odbierajacy INT,
    @oplata_dodatkowa DECIMAL(10, 2) = NULL
)
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Wypozyczenia WHERE id_wypozyczenia = @id_wypozyczenia)
    BEGIN
        PRINT 'Wypożyczenie o podanym ID nie istnieje.';
        RETURN;
    END

    DECLARE @id_samochodu INT;
    SELECT @id_samochodu = id_samochodu
    FROM Wypozyczenia
    WHERE id_wypozyczenia = @id_wypozyczenia;

    UPDATE Wypozyczenia
    SET data_zwrotu_rzeczywista = @data_zwrotu_rzeczywista,
        pracownik_odbierajacy = @pracownik_odbierajacy,
        oplata_dodatkowa = @oplata_dodatkowa
    WHERE id_wypozyczenia = @id_wypozyczenia;

    UPDATE dbo.Samochody
    SET dostepnosc = 'Dostepny'
    WHERE id_samochodu = @id_samochodu;

    PRINT 'Samochód został zwrócony.';
END;
GO

execute Zwroc 1013, '2024-04-14',1,200