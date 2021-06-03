# Generowanie tekstu

## Cel zadania
Celem zadania jest sprawdzenie umiejętności tworzenia i wykorzystania API

## Opis zadania
Zaimplementuj prosty serwis, który potrafi wygenerować i posortować słowo, a następnie przetestuj go za pomocą skryptu napisanego w języku Python

## Serwis
- Posiada minimum dwa endpointy:
	- generujący losowe słowo lub listę słów, o zadanej przez użytkownika długości, za pomocą alfabetu łacińskiego (małe i duże litery)
	- sortujący litery w słowie lub liście słów podanych przez użytkownika
		- słowo musi się składać tylko z liter alfabetu łacińskiego (małe i duże) i nie może zawierać znaków specjalnych
		- litery w słowie są sortowane rosnąco na podstawie wartości poszczególnych liter w tabeli US-ASCII (jeżeli w słowie występuje litera 'A', a litera 'z' znajdzie się zawsze na ostatnim) 
- Budowany jest za pomocą narzędzia Gradle, wykorzystuje framework Spring oraz język Java w wersji 11

## Skrypt pythonowy
- Celem skryptu jest wygenerowanie n losowych tekstów o określonej długości, posortowanie ich i zapisanie czasu jego wykonywania
 - do generowania i sortowania tekstu wykorzystywany jest nasz napisany serwis
 - czas wykonywania skryptu liczony jest od momentu wysłania pierwszego żądania, do momentu odebrania ostatniej odpowiedzi od serwisu
- Jest w formie Jupyter Notebooka lub skryptu *.py
- Jeżeli do skorzystania z klienta potrzebne są zewnętrzne biblioteki, to powinny one zostać zawarte w pliku requirements.txt i dołączone do rozwiązania zadania
- Skrypt jest możliwy do uruchomienia za pomocą Pythona w wersji 3.6.0

## Definicja zakończonego zadania:
- Istnieje, opisany powyżej serwis i skrypt
- Istnieje czytelne zestawienie czasów wykonania skryptu dla:
	- 1000 tesktów o długości 10 liter
	- 10 000 tesktów o długości 15 liter
	- 100 000 tesktów o długości 20 liter
	- 1 000 000 tesktów o długości 25 liter
	- 10 000 000 tesktów o długości 25 liter
- W pliku odpowiedzi.txt znajdują się krótkie i wyczerpujące odpowiedzi na pytania:
	- Czy czas wykonywania Twojego skryptu da się zmniejszyć?
	- Czy wykorzystałaś/eś reaktywne API? Odpowiedź uzasadnij
	
## Przykłady
- Odpowiedź serwera na żądanie wygenerowania tekstu o długości 15 może wyglądać tak: KpgGymXFapgAcKw
- Odpowiedź serwera na żądanie posortowania tekstu: KpgGymXFapgAcKw wygląda następująco: AFGKKXacggmppwy

## Przydatne linki:
- Szybkie postawienie projektu Spring: https://start.spring.io/
- Wykorzystanie reaktywnego API w Springu: https://spring.io/guides/gs/reactive-rest-service/, https://www.youtube.com/watch?v=zVNIZXf4BG8
- Pythonowy klient asynchroniczny: https://docs.aiohttp.org/en/stable/
- Tabela kodów ASCII: https://pl.wikipedia.org/wiki/ASCII
