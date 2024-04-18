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

Flota samochodowa: Baza danych będzie zawierała informacje o dostępnych samochodach do wypożyczenia, takie jak marka, model, rok produkcji, numer rejestracyjny, klasa samochodu (np. kompaktowy, SUV, luksusowy), dostępność, przebieg, data ostatniego serwisu itp.
    
Klienci: System będzie śledził dane klientów, w tym ich imiona, nazwiska, adresy, numery telefonów, adresy e-mail, historię wypożyczeń, rabaty, preferencje (np. preferowany typ samochodu), a także informacje o ewentualnych zaległościach finansowych.

Pracownicy: Baza danych będzie przechowywała dane o pracownikach wypożyczalni, takie jak imiona, nazwiska, stanowiska, numery identyfikacyjne, daty zatrudnienia, uprawnienia (np. do wystawiania umów najmu), a także informacje o wynagrodzeniach.

???proces wypozyczenia???

# 2.	Wymagania i funkcje systemu
### Wymagania funkcjonalne:
- Dodawanie nowego klienta do bazy danych.
- Wypożyczanie samochodu na określony okres.
- Generowanie faktur na podstawie danych o wypożyczeniach.
- Zarządzanie stanem floty (dostępność, serwisy, naprawy).

### Wymagania niefunkcjonalne:
- Wydajność: System powinien obsługiwać duże ilości danych.
- 

# 3.	Projekt bazy danych

## Schemat bazy danych

(diagram (rysunek) przedstawiający schemat bazy danych) 

## Opis poszczególnych tabel

(Dla każdej tabeli opis w formie tabelki)


Nazwa tabeli: (nazwa tabeli)
- Opis: (opis tabeli, komentarz)

| Nazwa atrybutu | Typ  | Opis/Uwagi |
|----------------|------|------------|
| Atrybut 1 …    |      |            |
| Atrybut 2 …    |      |            |


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



