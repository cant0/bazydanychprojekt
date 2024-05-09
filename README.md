# bazydanychprojekt
 

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
    
- Klienci: System będzie śledził dane klientów, w tym ich imiona, nazwiska, adresy, numery telefonów, adresy e-mail, historię wypożyczeń, rabaty (np. preferowany typ samochodu), a także informacje o ewentualnych zaległościach finansowych.

- Pracownicy: Baza danych będzie przechowywała dane o pracownikach wypożyczalni, takie jak imiona, nazwiska, stanowiska, numery identyfikacyjne, daty zatrudnienia, uprawnienia (np. do wystawiania umów najmu).

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
- Opis: (Tabela przedstawiająca wszystkich klientow wyporzyczalni, komentarz)

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
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu   | Typ          | Opis/Uwagi                                  |
|------------------|--------------|---------------------------------------------|
| id_miejsca       | int          | klucz główny tabeli                         |
| adres            | nvarchar(30) | adres wypżyczalni                           |
| miasto           | nvarchar(20) | miasto, w którym znajduje się wypożyczalnia |
| kraj             | nvarchar(20) | kraj, w którym znajduje się wypożyczalnia   |
| kod_pocztowy     | nvarchar(30) | kod pocztowy wypożyczalni                   |
| rodzaj           | nvarchar(20) | ??????????????????                          |
| godziny_otwarcia | int          | godziny otwarcia wypożyczalniy              |


# Nazwa tabeli: Platnosci
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu       | Typ          | Opis/Uwagi                              |
|----------------------|--------------|-----------------------------------------|
| id_platnosci         | int          | klucz główny tabeli                     |
| id_wypozyczenia      | int          | klucz obcy ?????????????                |
| typ_platnosci        | nvarchar(20) | RODZAJ PLATNOSCI???????????             |
| data_platnosci       | date         | data zapłacenia za wypożyczony samochód |
| kwota                | nvarchar(15) | kwota za wypożyczenie samochodu         |

# Nazwa tabeli: Pracownicy
- Opis: (opis tabeli, komentarz)

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
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu          | Typ           | Opis/Uwagi                        |
|-------------------------|---------------|-----------------------------------|
| id_wypozyczenia         | int           | klucz główny tabeli               |
| id_klienta              | int           | klucz obcy ???????????            |
| id_samochodu            | int           | klucz obcy ???????????            |
| data_wypozyczenia       | data          | data wypozyczenia samochodu       |
| data_zwrotu_planowana   | date          | planowana data zwrotu samochodu   |
| data_zwrotu_rzeczywsita | data          | rzeczywista data zwrotu samochodu |
| cena_calkowita          | decimal(10,2) | cana całkowita wypożyczenia       |
| oplata_dodatkowa        | decimal(10,2) | opłaty dodatkowe                  |
| miejsce_odbioru         | int           | klucz obcy ???????????            |
| miejsce_zwrotu          | int           | klucz obcy ???????????            |
| pracownik_wypozyczajacy | int           | klucz obcy ???????????            |
| pracownik_odbierajacy   | int           | klucz obcy ???????????            |
| status                  | nvarchar(20)  | status wypożyczenia               |

# Nazwa tabeli: Samochody
- Opis: (opis tabeli, komentarz)

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
| id_modelu           | int           | klcuz obcy ???????                     |


# Nazwa tabeli: Wyposazenie_w_samochodzie
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu | Typ           | Opis/Uwagi                                                 |
|----------------|---------------|------------------------------------------------------------|
| id_samochodu   | int           | klucz główny tabeli oraz klucz obcy do tabeli samochody    |
| id_wyposazenia | int           | klucz główny tabeli oraz klucz obcy do tabeli wyposarzenie |


# Nazwa tabeli: Wyposazenie
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu | Typ           | Opis/Uwagi                   |
|----------------|---------------|------------------------------|
| id_wyposazenia | int           | klucz główny tabeli          |
| wyposazenie    | nvarchar(100) | wyposażenie dostpene w aucie |

# Nazwa tabeli: Modele
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu | Typ          | Opis/Uwagi             |
|----------------|--------------|------------------------|
| id_modelu      | int          | klucz główny tabeli    |
| nazwa_modelu   | nvarchar(50) | nazwa modelu auta      |
| id_marki       | int          | klucz obcy ??????????? |

# Nazwa tabeli: Marki
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu | Typ          | Opis/Uwagi             |
|----------------|--------------|------------------------|
| id_marki       | int          | klucz główny tabeli    |
| nazwa_marki    | nvarchar(50) | nazwa marki auta       |

# Nazwa tabeli: Faktury
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu   | Typ           | Opis/Uwagi                  |
|------------------|---------------|-----------------------------|
| id_faktury       | int           | klucz główny tabeli         |
| numer_faktury    | nvarchar(20)  | numer wystawionej fakrury   |
| data_wystawienia | date          | data wystawienia faktury    |
| data_płatności   | date          | data płatności              |
| podatek_vat      | decimal(3,2)  | podatek vat od kwoty brutto |
| kwota_netto      | decimal(10,2) | kwota netto                 |
| kwota_brutto     | decimal(10,2) | kwota brutto                |
| status_faktrury  | nvarchar(15)  | status opłacenia faktury    |
| id_wypozyczenia  | int           | klucz obcy  ?????????       |



# 4.	Implementacja

## Kod poleceń DDL

(dla każdej tabeli należy wkleić kod DDL polecenia tworzącego tabelę)

```sql
create table tab1 (
   a int,
   b varchar(10)
)
```

## Widoki

(dla każdego widoku należy wkleić kod polecenia definiującego widok wraz z komentarzem)

## Procedury/funkcje

(dla każdej procedury/funkcji należy wkleić kod polecenia definiującego procedurę wraz z komentarzem)

## Triggery

(dla każdego triggera należy wkleić kod polecenia definiującego trigger wraz z komentarzem)



