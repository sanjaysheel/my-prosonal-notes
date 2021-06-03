# Fasolki

## Cel

Celem zadania jest weryfikacja umiejętności i wiedzy na temat tworzenia beanów springowych w oparciu o mechanizmy autokonfiguracyjne framework'a **Spring Boot**.

## Opis zadania

Załóżmy, że klasa **Student** posiada atrybuty

- **name** typu string
- **surname** typu string
- **active** typu boolean

klasa **Professor** atrybuty

- **name** typu string
- **surname** typu string
- **active** typu boolean

klasa **Students** atrybut

- **students** będący kolekcją elementów typu **Student**

oraz klasa **Group** atrybuty

- **name** typu string
- **professor** typu **Professor**
- **students** typu **Students**

Zaimplementuj powyższe klasy oraz stwórz klasę konfiguracyjną, która rejestruje w kontenerze bean'y typu **Group** (przyjmujemy, że istnieją tylko 2 grupy) na podstawie definicji z pliku **application.yml**. Bean'y typu **Group** powinny się tworzyć wyłącznie gdy, profesor z danej grupy jest "aktywny".
Przykład konfiguracji [application.yml]:

```yml
g1:
	name: "Grupa 1"
	professor:
		name: "Adam"
		surname: "X"
		active: true
	students:
		- name: "Piotr"
			surnama: "Y"
			active: false
g2:
  name: "Grupa 2"
	professor:
		name: "Andrzej"
		surname: "X"
		active: true
	students:
		- name: "Michał"
			surnama: "Y"
			active: true
```

W skład zarejestrowanych grup powinny wejść tylko osoby "aktywne".

Następnie zaimplementuj kolejną klasę konfiguracyjną, która na podstawie tej samej konfiguracji stworzy bean'a typu **Students** z kolekcją studentów "nieaktywnych" ze wszystkich grup.

Rozwiązaniem zadania jest projekt **gradle** z kodem źródłowym w języku Java 11. Szkielet aplikacji powinnien zostać stworzony w opraciu o framework **Spring Boot**. Po uruchomieniu aplikacji na wyjściu standardowym powinna zostać zaprezentowana, w przyjaznej formie, struktura grup oraz lista studentów nieaktywnych.

## Przydatne linki

[Spring Boot Reference Documentation](https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/)
[Spring Initializr](https://start.spring.io/)
