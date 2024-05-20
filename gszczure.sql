ALTER TABLE dbo.Klasy_samochodow
ADD CONSTRAINT CK_Cena_Positive CHECK (cena >= 0);

ALTER TABLE dbo.Wypozyczenia
ADD CONSTRAINT CK_Data_Zwrotu_Rzeczywista CHECK (data_zwrotu_rzeczywista IS NULL OR data_zwrotu_rzeczywista >= data_wypozyczenia);

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


INSERT INTO dbo.Klienci (imie, nazwisko, data_urodzenia, adres, miasto, kod_pocztowy, kraj, numer_telefonu, email, pesel, nr_prawa_jazdy, rabat) VALUES
('Piotr','Kowalski', '1975-12-12', 'ul. Miodowa 12', 'Krakow', '31-601', 'Polska', '112233445', 'piotr.k@example.com', '80010112345', 'AB123456', NULL),
('Jerzy','Krzek', '1987-07-07', 'ul. Polna 22', 'Warszawa', '00-701', 'Polska','223344556', 'jerzy.k@example.com','85021598765', 'CD789012', NULL),
('Robert','Mroczek', '1992-08-18', 'ul. Klonowa 34', 'Olsztyn', '10-402', 'Polska','334455667', 'robert.m@example.com','90032023456', 'EF345678', NULL),
('Jakub','Roken', '1984-09-29', 'ul. Brzozowa 46', 'Rzeszow', '35-604', 'Polska','445566778', NULL,'82042534567', 'GH901234', NULL),
('Krzysztof','Krawczyk', '1991-10-20', 'ul. Kasztanowa 58', 'Kielce', '25-505', 'Polska','556677889', 'krzychu.k@example.com','88053045678', 'IJ567890', 0.2),
('Adrian','Polak', '1993-11-11', 'ul. Wisniowa 64', 'Zielona Gora', '65-001', 'Polska','667788990', 'Adi.p@example.com','95061056789', 'KL123456', NULL),
('Piotr','Zielinski', '1979-01-23', 'ul. Cisowa 72', 'Bialystok', '15-111', 'Polska','778899001', 'piotr.z@example.com','83071567890', 'MN789012', NULL),
('Wojciech', 'Szczesny', '1986-03-05', 'ul. Swierkowa 86', 'Czestochowa', '42-200', 'Polska','889900112', 'wojtek.s@example.com','92082078901', 'OP345678', NULL),
('John', 'Bean', '2001-02-14', 'ul. Kingsway ', 'London', 'W8 Kensington', 'Anglia','+44 990011223', 'john.b@example.com', NULL, 'QR901234', NULL),
('Miro', 'Bezos', '1996-04-17', 'ul. Gazi ', 'Wolos', '382 21', 'Grecja','+30 68909546832', NULL, NULL, 'ST567890', NULL);

delete from dbo.Klienci

INSERT INTO dbo.Miejsca (adres, miasto, kraj, kod_pocztowy, godziny_otwarcia) VALUES
('ul. Pilsudskiego 18', 'Warszawa', 'Polska', '00-601', '08:00-18:00'),
('ul. Zakopianska 44', 'Krakow', 'Polska', '30-001', '09:00-19:00'),
('ul. Dudy 25', 'Kielce', 'Polska', '25-444', '08:00-18:00'),
('ul. Klonowa 33', 'Bialystok', 'Polska', '15-201', '08:00-18:00'),
('ul.Dawida 9', 'Krakow', 'Polska', '32-435', '08:00-18:00');
