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

- Flota samochodowa: Baza danych będzie zawierała informacje o dostępnych samochodach do wypożyczenia, takie jak marka, model, rok produkcji, numer rejestracyjny, klasa samochodu (np. kompaktowy, SUV, luksusowy), dostępność, przebieg, data ostatniego serwisu itp.
    
- Klienci: System będzie śledził dane klientów, w tym ich imiona, nazwiska, adresy, numery telefonów, adresy e-mail, historię wypożyczeń, rabaty, preferencje (np. preferowany typ samochodu), a także informacje o ewentualnych zaległościach finansowych.

- Pracownicy: Baza danych będzie przechowywała dane o pracownikach wypożyczalni, takie jak imiona, nazwiska, stanowiska, numery identyfikacyjne, daty zatrudnienia, uprawnienia (np. do wystawiania umów najmu), a także informacje o wynagrodzeniach.

- Klient może zarezerwować samochód online, przez telefon lub osobiście w wypożyczalni.

- Klient może dokonać rezerwacji, podając swoje dane osobowe (imię i nazwisko, adres, numer telefonu, numer prawa jazdy) oraz dane karty kredytowej.

- W dniu odbioru klient zgłasza się do wypożyczalni z dokumentem tożsamości i prawem jazdy.

- Klient podpisuje umowę najmu i wpłaca depozyt.

- Klient może przedłużyć okres wypożyczenia, jeśli samochód jest dostępny i po uzgodnieniu nowych warunków z wypożyczalnią.

- W dniu zwrotu klient zgłasza się do wypożyczalni z wypożyczonym samochodem

- Po podpisaniu protokołu zdawczo-odbiorczego pracownik wypożyczalni zwraca klientowi depozyt (po odliczeniu ewentualnych kosztów).


# 2.	Wymagania i funkcje systemu
### Wymagania funkcjonalne:
- Dodawanie i usuwanie klientów z bazy danych.
- Wypożyczanie samochodu na określony okres.
- Generowanie faktur na podstawie danych o wypożyczeniach.
- Zarządzanie stanem floty (dostępność, serwisy, naprawy).
- Wyszukiwanie danych po różnych kryteriach (np. imię i nazwisko klienta, numer rejestracyjny samochodu, data wypożyczenia)
- Rejestrowanie przeglądów i napraw samochodów
- Historia wypożyczeń dla każdego klienta

### Wymagania niefunkcjonalne:
- Wydajność: System powinien obsługiwać duże ilości danych.
- Skalowalność: Baza danych powinna być skalowalna i łatwa do rozbudowy o nowe funkcje i moduły w przyszłości.
- Struktura bazy danych powinna być logiczna i łatwa do zrozumienia dla użytkowników.

# 3.	Projekt bazy danych

## Schemat bazy danych

![img.png](img.png)

## Opis poszczególnych tabel

# Nazwa tabeli: Klienci
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu | Typ           | Opis/Uwagi               |
|----------------|---------------|--------------------------|
| id_klienta     | int           | klucz główny tabeli      |
| imie           | nvarchar(50)  | imie klienta             |
| nazwisko       | nvarchar(100) | nazwisko klienta         |
| data_urodzenia | date          | data urodzenia klienta   |
| adres          | nvarchar(255) | adres klienta            |
| miasto         | nvarchar(50)  | miasto klienta           |
| kod_pocztowy   | nvarchar(10)  | kod pocztowy klienta     |
| kraj           | nvarchar(50)  | kraj pochodzenia klienta |
| numer_telefonu | nvarchar(20)  | numer telefonu klienta   |
| email          | nvarchar(100) | email klienta            |
| pesel          | nvarchar(11)  | pesel klienta            |

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

# Nazwa tabeli: Status_platnosci
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu | Typ          | Opis/Uwagi          |
|----------------|--------------|---------------------|
| id_status      | int          | klucz główny tabeli |
| nazwa_statusu  | nvarchar(20) | status płatności    |

# Nazwa tabeli: Platnosci
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu       | Typ          | Opis/Uwagi                              |
|----------------------|--------------|-----------------------------------------|
| id_platnosci         | int          | klucz główny tabeli                     |
| id_wypozyczenia      | int          | klucz obcy ?????????????                |
| typ_platnosci        | nvarchar(20) | RODZAJ PLATNOSCI???????????             |
| data_platnosci       | date         | data zapłacenia za wypożyczony samochód |
| kwota                | nvarchar(15) | kwota za wypożyczenie samochodu         |
| id_statusu_platnosci | int          | klucz obcy ?????????????????            |

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

| Nazwa atrybutu           | Typ           | Opis/Uwagi                             |
|--------------------------|---------------|----------------------------------------|
| id_samochodu             | int           | klucz główny tabeli                    |
| marka                    | nvarchar(30)  | marka samochodu                        |
| model                    | nvarchar(50)  | model samochodu                        |
| rok_produkcji            | int           | rok produckji samochodu                |
| kolor                    | nvarchar(20)  | kolor samochodu                        |
| klasa_samochodu          | nvarchar(5)   | klasa samochodu                        |
| numer_rejestracyjny      | nvarchar(20)  | numer rejestracyjny samochodu          |
| przebieg                 | int           | przebieg samochodu                     |
| miejsca_siedzące         | int           | liczba miejsc siedzących w samochodzie |
| skrzynia_biegow          | nvarchar(3)   | skrzynia biegów w samochodzie          |
| naped                    | int           | dostępny napęd w samochodzie           |
| pojemnosc_silnika        | decimal(3,1)  | pojemność silnika w samochodzie        |
| stan_techniczny          | nvarchar(20)  | stan techniczny samochodu              |
| dostepnosc               | nvarchar(20)  | dostępność samochodu w wypożyczalni    |
| cena_wypozyczenia_dobowa | decimal(10,2) | dobowa cena wypożyczenia samochodu     |
| wypozazenie              | int           | klucz obcy ?????????                   |

# Nazwa tabeli: Wyposazenie
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu | Typ           | Opis/Uwagi                   |
|----------------|---------------|------------------------------|
| id_wyposazenia | int           | klucz główny tabeli          |
| wyposazenie    | nvarchar(100) | wyposażenie dostpene w aucie |


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



