# Projekt Bazy Danych
 

<!-- <style>
 p,li {
    font-size: 12pt;
  }
</style>  -->

<!-- <style>
 pre {
    font-size: 8pt;
  }
</style>  -->


---


**Temat:** Wypożyczalnia samochodów

**Autorzy:** Katarzyna Studnicka, Wiktor Piotrowski, Grzegorz Szczurek, Dawid Czesak

--- 

# 1.  Zakres i krótki opis systemu
Naszym celem jest stworzenie systemu zarządzania wypożyczalnią samochodów, który umożliwi zarządzanie procesem wypożyczania. System ten będzie stanowił miejsce, w którym przechowywane będą wszystkie informacje związane z flotą samochodową, klientami oraz pracownikami. 
### Opis systemu

- Flota samochodowa: Baza danych będzie zawierała informacje o dostępnych samochodach do wypożyczenia, takie jak marka, model, rok produkcji, numer rejestracyjny, klasa samochodu, dostępność, przebieg, sprawność samochodu.
    
- Klienci: System będzie śledził dane klientów, w tym ich imiona, nazwiska, adresy, numery telefonów, adresy e-mail, historię wypożyczeń, a także informacje o ewentualnych zaległościach finansowych.

- Pracownicy: Baza danych będzie przechowywała dane o pracownikach wypożyczalni, takie jak imiona, nazwiska, stanowiska, numery identyfikacyjne, numery telefonów, daty zatrudnienia, email, uprawnienia (np. do wystawiania umów najmu).

- Klient może zarezerwować samochód osobiście w wypożyczalni.

- Klient może dokonać rezerwacji, podając swoje dane osobowe (imię i nazwisko, pesel, adres, numer telefonu, numer prawa jazdy).

- W dniu odbioru klient zgłasza się do wypożyczalni z dokumentem tożsamości i prawem jazdy.

- Klient może przedłużyć okres wypożyczenia, jeśli samochód jest dostępny i po uzgodnieniu nowych warunków z wypożyczalnią.

- W dniu zwrotu klient zgłasza się do wypożyczalni z wypożyczonym samochodem.


# 2.	Wymagania i funkcje systemu
### Wymagania funkcjonalne:
- Dodawanie i usuwanie klientów z bazy danych.
- Wypożyczanie samochodu na określony okres.
- Generowanie faktur na podstawie danych o wypożyczeniach.
- Zarządzanie stanem floty (dostępność).
- Wyszukiwanie danych po różnych kryteriach (np. imię i nazwisko klienta, numer rejestracyjny samochodu, data wypożyczenia)
- Historia wypożyczeń dla każdego klienta

# 3.	Projekt bazy danych

## Schemat bazy danych

![img.png](img.png)

## Opis poszczególnych tabel

# Nazwa tabeli: Klienci
- Opis: (Tabela "Klienci" przechowuje informacje o klientach firmy.)

| Nazwa atrybutu | Typ           | Opis/Uwagi                  |
|----------------|---------------|-----------------------------|
| id_klienta     | int           | klucz główny tabeli         |
| imie           | nvarchar(50)  | imie klienta                |
| nazwisko       | nvarchar(100) | nazwisko klienta            |
| data_urodzenia | date          | data urodzenia klienta      |
| adres          | nvarchar(255) | adres klienta               |
| miasto         | nvarchar(50)  | miasto klienta              |
| kod_pocztowy   | nvarchar(10)  | kod pocztowy klienta        |
| kraj           | nvarchar(50)  | kraj pochodzenia klienta    |
| numer_telefonu | nvarchar(20)  | numer telefonu klienta      |
| email          | nvarchar(100) | email klienta               |
| pesel          | nvarchar(11)  | pesel klienta               |
| rabat          | decimal(3,2)  | rabat przypisany do klienta |
| nr_prawa_jazdy | nvarchar(50)  | numer prawa jazdy klienta   |


# Nazwa tabeli: Miejsca
- Opis: (Tabela "Miejsca" przechowuje informacje o różnych lokalizacjach wypożyczalni.)

| Nazwa atrybutu   | Typ          | Opis/Uwagi                                  |
|------------------|--------------|---------------------------------------------|
| id_miejsca       | int          | klucz główny tabeli                         |
| adres            | nvarchar(30) | adres wypżyczalni                           |
| miasto           | nvarchar(20) | miasto, w którym znajduje się wypożyczalnia |
| kraj             | nvarchar(20) | kraj, w którym znajduje się wypożyczalnia   |
| kod_pocztowy     | nvarchar(30) | kod pocztowy wypożyczalni                   |
| godziny_otwarcia | int          | godziny otwarcia wypożyczalniy              |


# Nazwa tabeli: Platnosci
- Opis: (Tabela "Płatności" przechowuje informacje o płatnościach za wypożyczenia samochodów.)

| Nazwa atrybutu   | Typ          | Opis/Uwagi                                 |
|------------------|--------------|--------------------------------------------|
| id_platnosci     | int          | klucz główny tabeli                        |
| id_wypozyczenia  | int          | klucz obcy z tabeli "Wypozyczenia"         |
| rodzaj_platnosci | nvarchar(20) | rodzaj płatności za wypozyczenie samochodu |
| data_platnosci   | date         | data zapłacenia za wypożyczony samochód    |
| kwota            | nvarchar(15) | kwota za wypożyczenie samochodu            |

# Nazwa tabeli: Pracownicy
- Opis: (Tabela "Pracownicy" przechowuje informacje o pracownikach firmy.)

| Nazwa atrybutu    | Typ           | Opis/Uwagi                   |
|-------------------|---------------|------------------------------|
| id_pracownika     | int           | klucz główny tabeli          |
| imie              | nvarchar(50)  | imię pracownika              |
| nazwisko          | nvarchar(250) | nazwisko pracownika          |
| data_urodzenia    | date          | data urodzenia pracownika    |
| stanowisko        | nvarchar(50)  | stanowisko pracownika        |
| numer_telefonu    | nvarchar(20)  | numer telefonu pracownika    |
| email             | nvarchar(100) | email pracownika             |
| adres             | nvarchar(255) | adres pracownika             |
| data_zatrudnienia | data          | data zatrudniania pracownika |
| uprawnienia       | nvarchar(20)  | numer telefonu pracownika    |

# Nazwa tabeli: Wypozyczenia
- Opis: (Tabela "Wypożyczenia" przechowuje informacje o wypożyczeniach samochodów.)

| Nazwa atrybutu          | Typ           | Opis/Uwagi                                 |
|-------------------------|---------------|--------------------------------------------|
| id_wypozyczenia         | int           | klucz główny tabeli                        |
| id_klienta              | int           | klucz obcy z tabeli Klienci                |
| id_samochodu            | int           | klucz obcy z tabeli Samochody              |
| data_wypozyczenia       | data          | data wypozyczenia samochodu                |
| data_zwrotu_planowana   | date          | planowana data zwrotu samochodu            |
| data_zwrotu_rzeczywsita | data          | rzeczywista data zwrotu samochodu          |
| cena_dobowa             | decimal(10,2) | cana całkowita wypożyczenia                |
| oplata_dodatkowa        | decimal(10,2) | opłaty dodatkowe                           |
| miejsce_odbioru         | int           | miejsce gdzie klient odebrał samochud      |
| miejsce_zwrotu          | int           | miejsce zwrotu samochodu                   |
| pracownik_wypozyczajacy | int           | pracownik odbierający wypożyczony samochód |
| pracownik_odbierajacy   | int           | pracownik odbierający wypożyczony samochód |
| status                  | nvarchar(20)  | status wypożyczenia                        |

# Nazwa tabeli: Samochody
- Opis: (Tabela "Samochody" przechowuje informacje o samochodach dostępnych do wypożyczenia.)

| Nazwa atrybutu      | Typ           | Opis/Uwagi                             |
|---------------------|---------------|----------------------------------------|
| id_samochodu        | int           | klucz główny tabeli                    |
| rok_produkcji       | int           | rok produckji samochodu                |
| kolor               | nvarchar(20)  | kolor samochodu                        |
| klasa_samochodu     | nvarchar(5)   | klasa samochodu                        |
| numer_rejestracyjny | nvarchar(20)  | numer rejestracyjny samochodu          |
| przebieg            | int           | przebieg samochodu                     |
| miejsca_siedzące    | int           | liczba miejsc siedzących w samochodzie |
| skrzynia_biegow     | nvarchar(3)   | skrzynia biegów w samochodzie          |
| naped               | int           | dostępny napęd w samochodzie           |
| pojemnosc_silnika   | decimal(3,1)  | pojemność silnika w samochodzie        |
| stan_techniczny     | nvarchar(20)  | stan techniczny samochodu              |
| dostepnosc          | nvarchar(20)  | dostępność samochodu w wypożyczalni    |
| cena                | decimal(10,2) | dobowa cena wypożyczenia samochodu     |
| id_modelu           | int           | klcuz obcy z tabeli Modele             |


# Nazwa tabeli: Wyposazenie_w_samochodzie
- Opis: (Tabela "Wyposażenie_w_samochodzie" tworzy relację wiele-do-wielu pomiędzy samochodami a ich wyposażeniem.)

| Nazwa atrybutu | Typ           | Opis/Uwagi                                                 |
|----------------|---------------|------------------------------------------------------------|
| id_samochodu   | int           | klucz główny tabeli oraz klucz obcy do tabeli samochody    |
| id_wyposazenia | int           | klucz główny tabeli oraz klucz obcy do tabeli wyposarzenie |


# Nazwa tabeli: Wyposazenie
- Opis: (Tabela "Wyposażenie" przechowuje informacje o różnych rodzajach wyposażenia dostępnych w samochodach.)

| Nazwa atrybutu | Typ           | Opis/Uwagi                         |
|----------------|---------------|------------------------------------|
| id_wyposazenia | int           | klucz główny tabeli                |
| wyposazenie    | nvarchar(100) | wyposażenie dostpene w samochodzie |

# Nazwa tabeli: Modele
- Opis: (Tabela "Modele" przechowuje informacje o różnych modelach samochodów.)

| Nazwa atrybutu | Typ          | Opis/Uwagi                |
|----------------|--------------|---------------------------|
| id_modelu      | int          | klucz główny tabeli       |
| nazwa_modelu   | nvarchar(50) | nazwa modelu samochodu    |
| id_marki       | int          | klucz obcy z tabeli Marki |

# Nazwa tabeli: Marki
- Opis:  Tabela "Marki" przechowuje informacje o różnych markach samochodów.)

| Nazwa atrybutu | Typ          | Opis/Uwagi            |
|----------------|--------------|-----------------------|
| id_marki       | int          | klucz główny tabeli   |
| nazwa_marki    | nvarchar(50) | nazwa marki samochodu |

# Nazwa tabeli: Faktury
- Opis: (Tabela "Faktury" przechowuje informacje o wystawionych fakturach dla wypożyczeń samochodów.)

| Nazwa atrybutu   | Typ           | Opis/Uwagi                       |
|------------------|---------------|----------------------------------|
| id_faktury       | int           | klucz główny tabeli              |
| numer_faktury    | nvarchar(20)  | numer wystawionej fakrury        |
| data_wystawienia | date          | data wystawienia faktury         |
| data_płatności   | date          | data płatności                   |
| podatek_vat      | decimal(3,2)  | podatek vat od kwoty brutto      |
| kwota_netto      | decimal(10,2) | kwota netto                      |
| kwota_brutto     | decimal(10,2) | kwota brutto                     |
| status_faktrury  | nvarchar(15)  | status opłacenia faktury         |
| id_wypozyczenia  | int           | klucz obcy z tabeli Wypozyczenia |



# 4.	Implementacja

## Kod poleceń DDL

(dla każdej tabeli należy wkleić kod DDL polecenia tworzącego tabelę)

* **Kod tworzenia tabeli "Klienci"**
```sql
create table dbo.Klienci
(
    id_klienta     int identity
        constraint id_klienta_pk
            primary key,
    imie           nvarchar(50)  not null,
    nazwisko       nvarchar(100) not null,
    data_urodzenia date          not null,
    adres          nvarchar(255) not null,
    miasto         nvarchar(50)  not null,
    kod_pocztowy   nvarchar(10),
    kraj           nvarchar(50),
    numer_telefonu nvarchar(20)  not null,
    email          nvarchar(100),
    pesel          nvarchar(11),
    nr_prawa_jazdy nvarchar(50)  not null,
    rabat          decimal(3, 2)
)
go
```
* **Kod tworzenia tabeli "Pracownicy"**
```sql
create table dbo.Pracownicy
(
    id_pracownika     int identity
        primary key,
    imie              nvarchar(50) not null,
    nazwisko          nvarchar(50) not null,
    data_urodzenia    date,
    stanowisko        nvarchar(50) not null,
    numer_telefonu    nvarchar(20),
    email             nvarchar(100),
    adres             nvarchar(255),
    data_zatrudnienia date         not null,
    uprawnienia       nvarchar(20) not null
)
go
```
* **Kod tworzenia tabeli "Wypozyczenia"**
```sql
create table dbo.Wypozyczenia
(
    id_wypozyczenia         int identity
        primary key,
    id_klienta              int            not null
        constraint Wypozyczenia_Klienci_id_klienta_fk
            references dbo.Klienci,
    id_samochodu            int            not null
        constraint Wypozyczenia_Samochody_id_samochodu_fk
            references dbo.Samochody,
    data_wypozyczenia       date           not null,
    data_zwrotu_planowana   date           not null,
    data_zwrotu_rzeczywista date,
    cena_dobowa             decimal(10, 2) not null,
    oplata_dodatkowa        decimal(10, 2),
    miejsce_odbioru         int            not null
        constraint Wypozyczenia_Miejsca_id_miejsca_fk
            references dbo.Miejsca,
    miejsce_zwrotu          int            not null
        constraint Wypozyczenia_Miejsca_id_miejsca_fk_2
            references dbo.Miejsca,
    pracownik_wypozyczajacy int
        constraint Wypozyczenia_Pracownicy_id_pracownika_fk
            references dbo.Pracownicy,
    pracownik_odbierajacy   int
        constraint Wypozyczenia_Pracownicy_id_pracownika_fk_2
            references dbo.Pracownicy,
    status                  nvarchar(20)   not null
)
go
```
* **Kod tworzenia tabeli "Miejsca"**
```sql
create table dbo.Miejsca
(
    id_miejsca       int identity
        constraint id_miejsca_pk
            primary key,
    adres            nvarchar(30) not null,
    miasto           nvarchar(20) not null,
    kraj             nvarchar(20) not null,
    kod_pocztowy     nvarchar(30) not null,
    godziny_otwarcia int          not null
)
go
```
* **Kod tworzenia tabeli Faktury**
```sql
create table dbo.Faktury
(
    id_faktury       int identity
        constraint id_faktury_pk
            primary key,
    numer_faktury    nvarchar(20)   not null,
    data_wystawienia date           not null,
    data_płatności   date           not null,
    podatek_vat      decimal(3, 2)  not null,
    kwota_netto      decimal(10, 2) not null,
    kwota_brutto     decimal(10, 2) not null,
    status_faktury   nvarchar(15)   not null,
    id_wypozyczenia  int            not null
        constraint Faktury_Wypozyczenia_id_wypozyczenia_fk
            references dbo.Wypozyczenia
)
go
```
* **Kod tworzenia tabeli "Marki"**
```sql
create table dbo.Marki
(
    id_marki    int identity
        constraint Marki_pk
            primary key,
    Nazwa_marki nvarchar(50)
)
go
```
* **Kod tworzenia tabeli "Modele"**
```sql
create table dbo.Modele
(
    id_modelu    int identity
        constraint Modele_pk
            primary key,
    nazwa_modelu nvarchar(50),
    id_marki     int not null
        constraint Modele_Marki_id_marki_samochodu_fk
            references dbo.Marki
)
go
```
* **Kod tworzenia tabeli "Platnosci"**
```sql
create table dbo.Platnosci
(
    id_platnosci     int          not null
        constraint id_platnosci
            primary key,
    id_wypozyczenia  int
        constraint Platnosci_Wypozyczenia_id_wypozyczenia_fk
            references dbo.Wypozyczenia,
    rodzaj_platnosci nvarchar(20) not null,
    data_platnosci   date,
    kwota            nvarchar(15) not null
)
go
```
* **Kod tworzenia tabeli "Samochody"**
```sql
create table dbo.Samochody
(
    id_samochodu        int identity
        constraint id_samochodu_pk
            primary key,
    rok_produkcji       int            not null,
    kolor               nvarchar(20)   not null,
    klasa_samochodu     nvarchar(5)    not null,
    numer_rejestracyjnu nvarchar(20)   not null,
    przebieg            int            not null,
    miejsca_siedzace    int            not null,
    skrzynia_biegow     nvarchar(3)    not null,
    naped               nvarchar(4)    not null,
    pojemnosc_silnika   decimal(3, 1)  not null,
    stan_techniczny     nvarchar(20)   not null,
    dostepnosc          nvarchar(20)   not null,
    cena                decimal(10, 2) not null,
    id_modelu           int            not null
        constraint Samochody_Modele_samochodow_id_modelu_fk
            references dbo.Modele
)
go
```
* **Kod tworzenia tabeli "Wyposazenie"**
```sql
create table dbo.Wyposazenie
(
    id_wyposazenia int identity
        constraint id_wyposazenia_pk
            primary key,
    wyposazenie nvarchar(100) not null
)
go
```
* **Kod tworzenia tabeli "Wyposazenie_w_samochodzie"**
```sql
create table dbo.Wyposazenie_w_samochodzie
(
    id_samochodu   int not null
        references dbo.Samochody,
    id_wyposazenia int not null
        references dbo.Wyposazenie,
    primary key (id_samochodu, id_wyposazenia)
)
go
```

## Widoki

(dla każdego widoku należy wkleić kod polecenia definiującego widok wraz z komentarzem)

## Procedury/funkcje

(dla każdej procedury/funkcji należy wkleić kod polecenia definiującego procedurę wraz z komentarzem)

## Triggery

(dla każdego triggera należy wkleić kod polecenia definiującego trigger wraz z komentarzem)



