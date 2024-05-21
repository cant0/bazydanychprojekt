ALTER TABLE dbo.Klasy_samochodow
ADD CONSTRAINT CK_Cena_Positive CHECK (cena >= 0);

ALTER TABLE dbo.Wypozyczenia
ADD CONSTRAINT CK_Data_Zwrotu_Rzeczywista CHECK (data_zwrotu_rzeczywista IS NULL OR data_zwrotu_rzeczywista >= data_wypozyczenia);

-- ALTER TABLE dbo.Wypozyczenia
-- ADD CONSTRAINT CK_Data_Zwrotu_Rzeczywista_Do_Pracownika CHECK (data_zwrotu_rzeczywista IS NULL OR data_zwrotu_rzeczywista >= Pracownicy.data_zatrudnienia);
-- TO MAJA BYC TRIGERRY, DODAC TRIGERRY SPRAWDZAJACY WIEK KLIENTA
-- ALTER TABLE dbo.Wypozyczenia
-- ADD CONSTRAINT CK_Data_Wypozyczenia_Do_Pracownika CHECK (data_wypozyczenia >= Pracownicy.data_zatrudnienia);


ALTER TABLE dbo.Wypozyczenia
ADD CONSTRAINT CK_Cena_Dobowa CHECK (cena_dobowa > 0);
ALTER TABLE dbo.Wypozyczenia
ADD CONSTRAINT CK_Oplata_Dodatkowa CHECK (oplata_dodatkowa IS NULL OR oplata_dodatkowa > 0);

ALTER TABLE dbo.Samochody
ADD CONSTRAINT CK_Przebieg CHECK (przebieg >= 0);

ALTER TABLE dbo.Samochody
ADD CONSTRAINT CK_Miejsca_Siedzace CHECK (miejsca_siedzace > 0);

ALTER TABLE dbo.Platnosci
ADD CONSTRAINT CK_Kwota CHECK (kwota_wplaty IS NULL OR kwota_wplaty >= 0);

ALTER TABLE dbo.Klienci
ADD CONSTRAINT CK_Pesel CHECK (pesel IS NULL OR pesel LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]');

ALTER TABLE dbo.Faktury
ADD CONSTRAINT CK_stawka_vat CHECK (stawka_vat >= 0);

ALTER TABLE dbo.Samochody
ADD CONSTRAINT check_dostępność CHECK (dostepnosc IN ('dostepny', 'niedostepny'));

ALTER TABLE dbo.Samochody
ADD CONSTRAINT CK_naped CHECK (naped IN ('FWD', 'RWD', 'AWD'));

ALTER TABLE dbo.Samochody
ADD CONSTRAINT CK_stan_techniczny CHECK (stan_techniczny IN ('Sprawny', 'Niesprawny'));






-- Inserting sample data into Faktury table
INSERT INTO dbo.Faktury (numer_faktury, data_wystawienia, stawka_vat, id_wypozyczenia) VALUES
('FV1234567890', '2023-01-01', 23.00, 1),
('FV1234567891', '2023-01-02', 23.00, 2),
('FV1234567892', '2023-01-03', 23.00, 3),
('FV1234567893', '2023-01-04', 23.00, 4),
('FV1234567894', '2023-01-05', 23.00, 5),
('FV1234567895', '2023-01-06', 23.00, 6),
('FV1234567896', '2023-01-07', 23.00, 7),
('FV1234567897', '2023-01-08', 23.00, 8),
('FV1234567898', '2023-01-09', 23.00, 9),
('FV1234567899', '2023-01-10', 23.00, 10);

insert into dbo.Klienci (imie, nazwisko, data_urodzenia, adres, miasto, kod_pocztowy, kraj, numer_telefonu, email, pesel, nr_prawa_jazdy, rabat)
values  (N'Piotr', N'Kowalski', N'1975-12-12', N'Miodowa 12', N'Krakow', N'31-601', N'Polska', N'+48 112233445', N'piotr.k@example.com', N'80010112345', N'AB123456', null),
        (N'Jerzy', N'Krzek', N'1987-07-07', N'Polna 22', N'Warszawa', N'00-701', N'Polska', N'+48 223344556', N'jerzy.k@example.com', N'85021598765', N'CD789012', null),
        (N'Robert', N'Mroczek', N'1992-08-18', N'Klonowa 34', N'Olsztyn', N'10-402', N'Polska', N'+48 334455667', N'robert.m@example.com', N'90032023456', N'EF345678', null),
        (N'Jakub', N'Roken', N'1984-09-29', N'Brzozowa 46', N'Rzeszow', N'35-604', N'Polska', N'+48 445566778', null, N'82042534567', N'GH901234', null),
        (N'Krzysztof', N'Krawczyk', N'1991-10-20', N'Kasztanowa 58', N'Kielce', N'25-505', N'Polska', N'+48 556677889', N'krzychu.k@example.com', N'88053045678', N'IJ567890', 0.20),
        (N'Adrian', N'Polak', N'1993-11-11', N'Wisniowa 64', N'Zielona Gora', N'65-001', N'Polska', N'+48 667788990', N'Adi.p@example.com', N'95061056789', N'KL123456', null),
        (N'Piotr', N'Zielinski', N'1979-01-23', N'Cisowa 72', N'Bialystok', N'15-111', N'Polska', N'+48 778899001', N'piotr.z@example.com', N'83071567890', N'MN789012', null),
        (N'Wojciech', N'Szczesny', N'1986-03-05', N'Swierkowa 86', N'Czestochowa', N'42-200', N'Polska', N'+48 889900112', N'wojtek.s@example.com', N'92082078901', N'OP345678', null),
        (N'John', N'Bean', N'2001-02-14', N'Kingsway 43', N'London', N'W8 Kensington', N'Anglia', N'+44 990011223', N'john.b@example.com', null, N'QR901234', null),
        (N'Miro', N'Bezos', N'1996-04-17', N'Gazi 53', N'Wolos', N'382 21', N'Grecja', N'+30 68909546832', null, null, N'ST567890', null);

delete from dbo.Klienci

INSERT INTO dbo.Miejsca (adres, miasto, kraj, kod_pocztowy, godziny_otwarcia) VALUES
('Pilsudskiego 18', 'Warszawa', 'Polska', '00-601', '08:00-18:00'),
('Zakopianska 44', 'Krakow', 'Polska', '30-001', '09:00-19:00'),
('Dawida 9', 'Krakow', 'Polska', '32-435', '08:00-18:00');

delete from dbo.Pracownicy

insert into dbo.Pracownicy (imie, nazwisko, data_urodzenia, stanowisko, numer_telefonu, email, adres, miasto, kraj, kod_pocztowy, data_zatrudnienia)
values  ('Jan', 'Kowalski', '1980-01-01', 'Manager', '+48 523456789', 'jan.kowalski@example.com', 'Kwiatowa 10', 'Krakow', 'Polska', '31-341', '2015-06-01'),
        (N'Adam', N'Nowak', N'1985-02-15', N'Asystent', N'+48 987654321', N'adam.nowak@example.com', N'Ogrodowa 20', N'Krakow', N'Polska', N'32-521', N'2016-07-15'),
        (N'Piotr', N'Wisniewski', N'1990-03-20', N'Sprzedawca', N'+48 534567890', N'piotr.wisniewski@example.com', N'Lipowa 30', N'Krakow', N'Polska', N'31-555', N'2017-08-20'),
        (N'Pawel', N'Wojcik', N'1982-04-25', N'Sprzedawca', N'+48 545678901', N'pawel.wojcik@example.com', N'Debowa 40', N'Krakow', N'Polska', N'32-323', N'2018-09-25'),
        (N'Krzysztof', N'Kowalczyk', N'1988-05-30', N'Sprzedawca', N'+48 556789012', N'krzysztof.kowalczyk@example.com', N'Jesionowa 50', N'Warszawa', N'Polska', N'00-100', N'2019-10-30'),
        (N'Tomasz', N'Zielinski', N'1995-06-10', N'Sprzedawca', N'+48 567890123', N'tomasz.zielinski@example.com', N'Wierzbow 60', N'Warszawa', N'Polska', N'01-109', N'2020-11-10'),
        (N'Marek', N'Szymanski', N'1983-07-15', N'Sprzedawca', N'+48 678901234', N'marek.szymanski@example.com', N'Sosnowa 70', N'Krakow', N'Polska', N'32-535', N'2021-12-15'),
        (N'Andrzej', N'Wozniak', N'1992-08-20', N'Sprzedawca', N'+48 789012345', N'andrzej.wozniak@example.com', N'Akacjowa 80', N'Krakow', N'Polska', N'31-999', N'2022-01-20'),
        (N'Rafal', N'Dabrowski', N'1986-09-25', N'Sprzedawca', N'+48 690123456', N'rafal.dabrowski@example.com', N'Topolowa 90', N'Warszawa', N'Polska', N'01-666', N'2023-02-25'),
        (N'Jakub', N'Lewandowski', N'1993-10-30', N'Specjalista IT', N'+48 601234567', N'jakub.lewandowski@example.com', N'Jodlowa 100', N'Krakow', N'Polska', N'31-909', N'2024-03-30');


insert into dbo.Wypozyczenia (id_klienta, id_samochodu, data_wypozyczenia, data_zwrotu_planowana, data_zwrotu_rzeczywista, cena_dobowa, oplata_dodatkowa, miejsce_odbioru, miejsce_zwrotu, pracownik_wypozyczajacy, pracownik_odbierajacy)
values  (1, 8, N'2024-01-01', N'2024-01-15', N'2024-01-15', 350.00, null, 2, 2, 3, 3),
        (3, 1, N'2023-05-01', N'2023-05-05', N'2023-05-05', 150.00, null, 1, 1, 5, 6),
        (10, 3, N'2020-06-01', N'2020-06-11', N'2020-06-12', 400.00, 100.00, 3, 2, 1, 4),
        (9, 9, N'2022-12-01', N'2022-12-04', N'2022-12-04', 200.00, null, 1, 1, 5, 7),
        (5, 8, N'2022-09-01', N'2022-09-06', N'2022-09-06', 350.00, null, 2, 2, 1, 5),
        (2, 7, N'2023-11-23', N'2023-12-01', N'2023-12-04', 200.00, 300.00, 3, 3, 4, 7),
        (10, 5, N'2024-02-14', N'2024-02-19', N'2024-02-19', 150.00, null, 2, 3, 6, 6),
        (6, 1, N'2023-06-16', N'2023-06-21', N'2023-06-21', 150.00, null, 3, 3, 7, 8);

-- WIDOKI zapisujemy je dodajac na poczatku "V"

-- 1. Calkowity koszt najmu

CREATE VIEW V_CalkowityKosztNajmu AS
SELECT
    id_wypozyczenia,
    cena_dobowa,
    DATEDIFF(day, data_wypozyczenia, data_zwrotu_rzeczywista) AS liczba_dni,
    ISNULL(oplata_dodatkowa, 0) AS oplata_dodatkowa,
    (cena_dobowa * DATEDIFF(day, data_wypozyczenia, data_zwrotu_rzeczywista) + ISNULL(oplata_dodatkowa, 0)) AS calkowity_koszt
FROM
    dbo.Wypozyczenia
WHERE
    data_zwrotu_rzeczywista >= data_wypozyczenia;
GO

SELECT * FROM V_CalkowityKosztNajmu

-- 2.