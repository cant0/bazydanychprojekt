insert into dbo.Klienci (imie, nazwisko, data_urodzenia, adres, miasto, kod_pocztowy, kraj, numer_telefonu, email, pesel, nr_prawa_jazdy, rabat)
values
('Jan', 'Kowalski', '1980-05-15', 'ul. Kwiatowa 3', 'Warszawa', '00-001', 'Polska', '123456789', 'jan.kowalski@gmail.com', '80051512345', 'ABC123456', 0.05),
('Anna', 'Nowak', '1990-07-20', 'ul. Lipowa 5', 'Kraków', '30-002', 'Polska', '987654321', 'anna.nowak@gmail.com', '90072067890', 'DEF789012', 0.10),
('Piotr', 'Wiśniewski', '1985-11-30', 'ul. Dębowa 8', 'Poznań', '61-003', 'Polska', '456789123', 'piotr.wisniewski@gmail.com', '85113045678', 'GHI345678', 0.00),
('Katarzyna', 'Wójcik', '1978-02-14', 'ul. Jesionowa 11', 'Gdańsk', '80-004', 'Polska', '321654987', 'katarzyna.wojcik@gmail.com', '78021434567', 'JKL901234', 0.15),
('Michał', 'Krawczyk', '1992-03-25', 'ul. Brzozowa 7', 'Łódź', '90-005', 'Polska', '654987321', 'michal.krawczyk@gmail.com', '92032556789', 'MNO567890', 0.05),
('Agnieszka', 'Kaczmarek', '1983-08-12', 'ul. Klonowa 9', 'Wrocław', '50-006', 'Polska', '789123456', 'agnieszka.kaczmarek@gmail.com', '83081267890', 'PQR123456', 0.20),
('Tomasz', 'Mazur', '1987-06-18', 'ul. Wierzbowy 4', 'Szczecin', '70-007', 'Polska', '567891234', 'tomasz.mazur@gmail.com', '87061834567', 'STU789012', 0.00),
('Magdalena', 'Zielińska', '1991-09-29', 'ul. Sosnowa 6', 'Bydgoszcz', '85-008', 'Polska', '891234567', 'magdalena.zielinska@gmail.com', '91092978901', 'VWX345678', 0.10),
('Paweł', 'Jankowski', '1984-12-05', 'ul. Świerkowa 12', 'Lublin', '20-009', 'Polska', '234567891', 'pawel.jankowski@gmail.com', '84120523456', 'YZA901234', 0.15),
('Ewa', 'Szymańska', '1979-04-22', 'ul. Topolowa 14', 'Katowice', '40-010', 'Polska', '678912345', 'ewa.szymanska@gmail.com', '79042267890', 'BCD567890', 0.05);

insert into dbo.Pracownicy (imie, nazwisko, data_urodzenia, stanowisko, numer_telefonu, email, adres, data_zatrudnienia, uprawnienia)
values
('Adam', 'Nowicki', '1985-01-15', 'Kierownik', '123456789', 'adam.nowicki@firma.pl', 'ul. Kwiatowa 3, Warszawa', '2010-04-15', 'Kat. B'),
('Beata', 'Kowalczyk', '1990-06-22', 'Recepcjonistka', '987654321', 'beata.kowalczyk@firma.pl', 'ul. Lipowa 5, Kraków', '2015-07-20', 'Kat. B'),
('Cezary', 'Lewandowski', '1978-11-30', 'Mechanik', '456789123', 'cezary.lewandowski@firma.pl', 'ul. Dębowa 8, Poznań', '2008-09-15', 'Kat. B, C'),
('Dorota', 'Kwiatkowska', '1983-02-14', 'Księgowa', '321654987', 'dorota.kwiatkowska@firma.pl', 'ul. Jesionowa 11, Gdańsk', '2012-01-10', 'Kat. B'),
('Edward', 'Wróblewski', '1992-03-25', 'Specjalista IT', '654987321', 'edward.wroblewski@firma.pl', 'ul. Brzozowa 7, Łódź', '2018-11-01', 'Kat. B'),
('Filip', 'Zając', '1987-07-14', 'Kierowca', '789123456', 'filip.zajac@firma.pl', 'ul. Klonowa 9, Wrocław', '2013-03-12', 'Kat. B, C, D'),
('Grażyna', 'Wiśniewska', '1979-09-05', 'Kierownik działu', '567891234', 'grazyna.wisniewska@firma.pl', 'ul. Wierzbowy 4, Szczecin', '2005-08-22', 'Kat. B'),
('Hubert', 'Mazur', '1985-11-20', 'Pracownik działu obsługi klienta', '891234567', 'hubert.mazur@firma.pl', 'ul. Sosnowa 6, Bydgoszcz', '2017-02-25', 'Kat. B'),
('Iwona', 'Krawczyk', '1991-04-29', 'Recepcjonistka', '234567891', 'iwona.krawczyk@firma.pl', 'ul. Świerkowa 12, Lublin', '2019-05-15', 'Kat. B'),
('Janusz', 'Zieliński', '1980-12-05', 'Mechanik', '678912345', 'janusz.zielinski@firma.pl', 'ul. Topolowa 14, Katowice', '2014-06-30', 'Kat. B, C');

insert into dbo.Wypozyczenia (id_klienta, id_samochodu, data_wypozyczenia, data_zwrotu_planowana, data_zwrotu_rzeczywista, cena_dobowa, oplata_dodatkowa, miejsce_odbioru, miejsce_zwrotu, pracownik_wypozyczajacy, pracownik_odbierajacy, status)
values
(1, 10, '2024-01-01', '2024-01-10', '2024-01-10', 150.00, 0.00, 1, 1, 4, 2, 'zakończona'),
(2, 7, '2024-02-01', '2024-02-05', '2024-02-04', 200.00, 0.00, 2, 2, 4, 4, 'zakończona'),
(3, 3, '2024-03-01', '2024-03-15', '2024-03-16', 100.00, 70.00, 3, 3, 1, 10, 'zakończona'),
(4, 1, '2024-04-01', '2024-04-07', '2024-04-08', 250.00, 30.00, 4, 4, 2, 10, 'zakończona'),
(5, 6, '2024-05-01', '2024-05-10', '2024-05-09', 180.00, 0.00, 5, 5, 2, 7, 'zakończona'),
(6, 2, '2024-06-01', '2024-06-05', '2024-06-05', 220.00, 0.00, 6, 10, 3, 10, 'zakończona'),
(7, 4, '2024-07-01', '2024-07-14', '2024-07-13', 150.00, 0.00, 7, 7, 10, 10, 'zakończona'),
(8, 9, '2024-08-01', '2024-08-10', '2024-08-11', 200.00, 80.00, 8, 8, 8, 5, 'zakończona'),
(9, 5, '2024-09-01', '2024-09-05', '2024-09-06', 100.00, 20.00, 9, 9, 9, 6, 'zakończona'),
(10, 8, '2024-10-01', '2024-10-10', '2024-10-09', 250.00, 0.00, 10, 10, 2, 9, 'zakończona');

-- liczba dni razy cena = odpowiednie id faktury
-- koniec tu

insert into dbo.Miejsca (id_miejsca ,adres, miasto, kraj, kod_pocztowy, godziny_otwarcia)
values
(1,'ul. Kwiatowa 3', 'Warszawa', 'Polska', '00-001', 8),
(2,'ul. Lipowa 5', 'Kraków', 'Polska', '30-002', 9),
(3,'ul. Dębowa 8', 'Poznań', 'Polska', '61-003', 10),
(4,'ul. Jesionowa 11', 'Gdańsk', 'Polska', '80-004', 8),
(5,'ul. Brzozowa 7', 'Łódź', 'Polska', '90-005', 9),
(6,'ul. Klonowa 9', 'Wrocław', 'Polska', '50-006', 10),
(7,'ul. Wierzbowy 4', 'Szczecin', 'Polska', '70-007', 8),
(8,'ul. Sosnowa 6', 'Bydgoszcz', 'Polska', '85-008', 9),
(9,'ul. Świerkowa 12', 'Lublin', 'Polska', '20-009', 10),
(10,'ul. Topolowa 14', 'Katowice', 'Polska', '40-010', 8);

insert into dbo.Faktury (id_faktury, numer_faktury, data_wystawienia, data_płatności, podatek_vat, kwota_netto, kwota_brutto, status_faktury, id_wypozyczenia)
values
(1,'FV-2024/01', '2024-01-10', '2024-01-20', 23.00, 1500.00, 1845.00, 'opłacona', 5),
(2,'FV-2024/02', '2024-02-05', '2024-02-15', 23.00, 800.00, 984.00, 'opłacona', 6),
(3,'FV-2024/03', '2024-03-15', '2024-03-25', 23.00, 1500.00, 1845.00, 'opłacona', 8),
(4,'FV-2024/04', '2024-04-07', '2024-04-17', 23.00, 2500.00, 3075.00, 'opłacona', 7),
(5,'FV-2024/05', '2024-05-10', '2024-05-20', 23.00, 1800.00, 2214.00, 'opłacona', 10),
(6,'FV-2024/06', '2024-06-05', '2024-06-15', 23.00, 2200.00, 2706.00, 'opłacona', 1),
(7,'FV-2024/07', '2024-07-14', '2024-07-24', 23.00, 3000.00, 3690.00, 'opłacona', 9),
(8,'FV-2024/08', '2024-08-10', '2024-08-20', 23.00, 2000.00, 2460.00, 'opłacona', 2),
(9,'FV-2024/09', '2024-09-05', '2024-09-15', 23.00, 1000.00, 1230.00, 'opłacona', 3),
(10,'FV-2024/10', '2024-10-10', '2024-10-20', 23.00, 2500.00, 3075.00, 'opłacona', 4);

insert into dbo.Marki (id_marki, Nazwa_marki)
values
(1,'Toyota'),
(2,'BMW'),
(3,'Audi'),
(4,'Mercedes-Benz'),
(5,'Volkswagen'),
(6,'Honda'),
(7,'Ford');


insert into dbo.Modele (id_modelu, nazwa_modelu, id_marki)
values
(1,'Corolla', 1),
(2,'Camry', 1),
(3,'X5', 2),
(4,'A4', 3),
(5,'A6', 3),
(6,'C-Class', 4),
(7,'E-Class', 4),
(8,'Golf', 5),
(9,'Civic', 6),
(10,'Focus', 7);

insert into dbo.Platnosci (id_platnosci, id_wypozyczenia, rodzaj_platnosci, data_platnosci, kwota)
values
(1, 1, 'Karta kredytowa', '2024-01-10', '1845.00'),
(2, 2, 'Przelew bankowy', '2024-02-05', '984.00'),
(3, 3, 'Karta kredytowa', '2024-03-15', '1845.00'),
(4, 4, 'Gotówka', '2024-04-07', '3075.00'),
(5, 5, 'Przelew bankowy', '2024-05-10', '2214.00'),
(6, 6, 'Karta kredytowa', '2024-06-05', '2706.00'),
(7, 7, 'Gotówka', '2024-07-14', '3690.00'),
(8, 8, 'Przelew bankowy', '2024-08-10', '2460.00'),
(9, 9, 'Karta kredytowa', '2024-09-05', '1230.00'),
(10, 10, 'Gotówka', '2024-10-10', '3075.00');

insert into dbo.Samochody (id_samochodu, rok_produkcji, kolor, klasa_samochodu, numer_rejestracyjnu, przebieg, miejsca_siedzace, skrzynia_biegow, naped, pojemnosc_silnika, stan_techniczny, dostepnosc, cena, id_modelu)
values
(1, 2020, 'Czarny', 'A', 'WA12345', 15000, 5, 'AUT', '4WD', 2.0, 'Bardzo dobry', 'Dostępny', 150.00, 1),
(2, 2019, 'Biały', 'B', 'KR67890', 25000, 5, 'MAN', 'FWD', 1.6, 'Dobry', 'Dostępny', 200.00, 2),
(3, 2018, 'Niebieski', 'C', 'PO13579', 30000, 5, 'AUT', 'RWD', 2.5, 'Dobry', 'Dostępny', 250.00, 3),
(4, 2021, 'Szary', 'D', 'GD24680', 10000, 5, 'MAN', '4WD', 3.0, 'Bardzo dobry', 'Dostępny', 4),
(5, 2017, 'Czerwony', 'E', 'LO97531', 45000, 5, 'AUT', 'FWD', 1.8, 'Zadowalający', 'Dostępny', 5),
(6, 2019, 'Zielony', 'A', 'LU12345', 20000, 5, 'MAN', 'RWD', 2.0, 'Dobry', 'Dostępny', 6),
(7, 2022, 'Czarny', 'B', 'BI67890', 5000, 5, 'AUT', '4WD', 3.5, 'Bardzo dobry', 'Dostępny', 7),
(8, 2021, 'Biały', 'C', 'SZ13579', 8000, 5, 'MAN', 'FWD', 2.2, 'Bardzo dobry', 'Dostępny', 8),
(9, 2018, 'Niebieski', 'D', 'OP24680', 30000, 5, 'AUT', 'RWD', 2.0, 'Dobry', 'Dostępny', 9),
(10, 2020, 'Szary', 'E', 'KI97531', 12000, 5, 'MAN', '4WD', 2.5, 'Bardzo dobry', 'Dostępny', 10);

insert into dbo.Wyposazenie (id_wyposazenia, wyposazenie)
values
(1,'Klimatyzacja'),
(2,'Podgrzewane fotele'),
(3,'System nawigacji'),
(4,'Bluetooth'),
(5,'Kamera cofania'),
(6,'Tempomat'),
(7,'Skórzana tapicerka'),
(8,'Światła LED'),
(9,'Asystent parkowania'),
(10,'System bezkluczykowy');

insert into dbo.Wyposazenie_w_samochodzie (id_samochodu, id_wyposazenia)
values
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10);