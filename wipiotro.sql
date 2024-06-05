insert into dbo.samochody (marka, model, rocznik, klasa)
values ('FORD', 'FIESTA', 2017, 'B')

select *
from dbo.samochody

delete from dbo.Modele

create table dbo.Marki
(
    id_marki    int identity
        constraint Marki_pk
            primary key,
    Nazwa_marki nvarchar(50)
)
go

create table dbo.Wyposazenie_w_samochodzie
(
    id_samochodu   int not null
        references dbo.Samochody,
    id_wyposazenia int not null
        references dbo.Wyposazenie,
    primary key (id_samochodu, id_wyposazenia)
)
go

create table dbo.Wyposazenie
(
    id_wyposazenia int identity
        constraint id_wyposazenia_pk
            primary key,
    wyposazenie nvarchar(100) not null
)
go


INSERT INTO dbo.Faktury (numer_faktury, data_wystawienia, stawka_vat, id_wypozyczenia) VALUES
('FV1234567890', '2023-01-01', 23.00, 1),
('FV1234567891', '2023-01-02', 23.00, 2),
('FV1234567892', '2023-01-03', 23.00, 3),
('FV1234567892', '2023-01-04', 23.00, 4),
('FV1234567892', '2023-01-05', 23.00, 5),
('FV1234567892', '2023-01-06', 23.00, 6),
('FV1234567892', '2023-01-07', 23.00, 7),
('FV1234567892', '2023-01-08', 23.00, 8),
('FV1234567892', '2023-01-09', 23.00, 9),
('FV1234567892', '2023-01-10', 23.00, 10);

-- INSERT INTO dbo.Klasy_samochodow (klasa_samochodu, cena) VALUES
-- ('Compact', 200.00),
-- ('Sedan', 300.00),
-- ('SUV', 400.00),
-- ('Truck', 500.00),
-- ('Convertible', 600.00),
-- ('Minivan', 350.00),
-- ('Luxury', 700.00),
-- ('Economy', 150.00),
-- ('Sports', 800.00),
-- ('Electric', 450.00);

SET IDENTITY_INSERT dbo.Modele ON;
INSERT INTO dbo.Modele (id_modelu, nazwa_modelu, id_marki)
VALUES
(1, 'Corolla', 1),
(2, 'Camry', 1),
(3, 'Mustang', 2),
(4, 'F-150', 2),
(5, 'X5', 3),
(6, 'A4', 4),
(7, 'Civic', 5),
(8, 'Model S', 6),
(9, 'Impala', 7),
(10, 'Altima', 8),
(11, 'Golf', 9),
(12, 'i20', 10);
SET IDENTITY_INSERT dbo.Modele OFF;

delete from dbo.Modele

-- INSERT INTO Marki (Nazwa_marki) VALUES
-- ('Toyota'),
-- ('Ford'),
-- ('BMW'),
-- ('Audi'),
-- ('Honda'),
-- ('Tesla'),
-- ('Chevrolet'),
-- ('Nissan'),
-- ('Volkswagen'),
-- ('Hyundai');

SET IDENTITY_INSERT dbo.Samochody ON;
insert into dbo.Samochody (id_samochodu, rok_produkcji, kolor, numer_rejestracyjnu, przebieg, miejsca_siedzace, skrzynia_biegow, naped, pojemnosc_silnika, stan_techniczny, dostepnosc, id_modelu, id_klasy)values
(1, 2022, 'Czerwony', 'KR12345', 10047, 5, 'AT', 'FWD', 1.6, 'Sprawny', 'Dostepny', 1, 1),
(2, 2020, 'Bialy', 'WA98765', 53300, 5, 'MT', 'RWD', 1.0, 'Niesprawny', 'Niedostepny', 2, 2),
(3, 2021, 'Zielony', 'GW58724', 20450, 5, 'MT', 'RWD', 5.0, 'Sprawny', 'Dostepny', 3, 9),
(4, 2022, 'Czarny', 'BG72185', 30000, 5, 'AT', 'AWD', 5.0, 'Niesprawny', 'Niedostepny', 4, 4),
(5, 2021, 'Niebieski', 'XD78314', 49600, 5, 'MT', 'FWD', 1.8, 'Sprawny', 'Niedostepny', 5, 3),
(6, 2022, 'Fioletowy', 'GH78541', 5610, 5, 'AT', 'FWD', 2.0, 'Niesprawny', 'Niedostepny', 6, 2),
(7, 2021, 'Zolty', 'KK78965', 60550, 5, 'MT', 'FWD', 1.8, 'Sprawny', 'Dostepny', 7, 1),
(8, 2022, 'Czarny', 'ELG7854', 77440, 5, 'AT', 'RWD', 5.0, 'Niesprawny', 'Niedostepny', 8, 10),
(9, 2021, 'Niebieski', 'KUP785', 80580, 5, 'MT', 'FWD', 1.8, 'Sprawny', 'Dostepny', 9, 5),
(10, 2022, 'Czerwony', 'WW89012', 84880, 5, 'AT', 'FWD', 0, 'Sprawny', 'Dostepny', 11, 1),
(11, 2022, 'Czerwony', 'KK78465', 10047, 5, 'AT', 'FWD', 1.6, 'Sprawny', 'Dostepny', 12, 1);
SET IDENTITY_INSERT dbo.Samochody OFF;





INSERT INTO dbo.Wyposazenie (wyposazenie) VALUES
('Klimatyzacja'),
('Skorzane wnetrze'),
('Bluetooth'),
('Kamera cofania'),
('GPS'),
('Podgrzewane siedzenia'),
('Dach panoramiczny'),
('Aluminiowe felgi'),
('Tempomat'),
('Czujnik martwej strefy');


insert into dbo.Wyposazenie_w_samochodzie (id_samochodu, id_wyposazenia) values
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 8),
(1, 9),
(1, 10),
(1, 7),
(2, 1),
(2, 2),
(2, 3),
(2, 8),
(2, 9),
(3,1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 1),
(4, 2),
(4, 3),
(4, 9),
(4, 10),
(5, 1),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 9),
(7, 10),
(8, 1),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(9, 1),
(9, 2),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(10, 1),
(10, 8),
(10, 9),
(10, 10),
(11, 1);


-- nowy diagram w readme



select id_faktury,numer_faktury,data_wystawienia,stawka_vat,id_wypozyczenia
from dbo.Faktury




