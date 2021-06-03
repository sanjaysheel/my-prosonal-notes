# Pyłki
## Cel
Celem zadania jest weryfikacja umiejętności wykorzystania wzorców projektowych w praktyce na przykładzie wzorca **flyweight** oraz weryfikacja umiejętności analizy tekstu pod kątem wymagań biznesowych.
## Opis zadania
Zaimplementuj w języku Java 11 wirtualny detektor obszarów zawierających tekst na zdjęciu. Interfejs publiczny detektora powiniem zawierać tylko jedną metodę **detect** przyjmującą argument typu **Image**, kolekcję obiektów typu **Text** oraz liczbę całkowitą **count**. Metoda powinna zwracać wynik w postaci obiektu typu **Detection**. 
### Typy
- Typ **Image** reprezentuje obraz, na którym detektor będzie rozpoznawał obiekty. **Image** posiada atrybuty **width** oraz **height**.
- Typ **Detection** reprezentuje wynik detekcji. **Detection** zawiera tylko jeden atrybut **textBoxes**, będący kolekcją obiektów typu **TextBox**.
- **TextBox** reprezentuje obszar na zdjęciu zawierający tekst. **TextBox** posiada atrybuty *boundingBox* typu **BoundingBox** oraz **text** typu **Text**.
- **BoundingBox** reprezentuje obszar na zdjęciu. Posiada atrybuty typu **int**: **left**, **right**, **top**, **bottom**.
- **Text** reprezentuje ciąg znaków. Posiada jeden atrybut **value** typu **String**.
### Wymagania
Załóżmy, że wirtualny detektor jest w stanie wykryć wiele tysięcy obiektów na zdjęciu. Jednym z kluczowych wymagań jest zminimalizowanie zużycia pamięci ze względu na potencjalnie dużą liczbę rozpoznanych obiektów (stąd użycie wzorca **flyweight**). Detektor rozpoznaje obiekty z tekstem na podstawie z góry określonego zestawu ciągów znaków. Liczba wykrytych obiektów nie może przekraczać pewnej wartości maksymalnej. Kolekcja ciągów znaków oraz maksymalna liczba rozpoznanych obiektów są określane przez klienta detektora.
### Uproszczenia na potrzeby zadania
- klientem detektora jest metoda **main**
- operujemy na wirtualnym zdjęciu typu **Image**
- detektor symuluje detekcje wyznaczając obszary zawierujące tekst w sposób losowy
- wyznaczony obszar nie może wychodzić poza ramy zdjęcia
- ciągi znaków są wybierane losowo z zestawu ciągów znaków przekazanych przez klienta detektora
## Rozwiązanie zadania
Rozwiązaniem zadania jest projekt **Gradle** z kodem źródłowym w języku Java 11. Po uruchomieniu aplikacja powinna uruchomić wirtualny detektor oraz wypisać wynik jego działania na wyjściu standardowym w przyjaznej formie. Dane wejściowe detektora (**wirtualne zdjęcie**, **zestaw ciągów znaków**, **maksymalna ilość obiektów**) mogą być zdefiniowane w kodzie źródłowym w klasie zawierającej metodę **main**.
## Przykład klienta detektora
```java
package com.example.demo;

public class Application {

   public static void main(String[] args) {

      final int count = 5000;
      final int imageWidth = 200;
      final int imageHeight = 600;

      final Text[] textsAvailable = new Text[] {
            new Text("Text 1"),
            new Text("Text 143"),
            new Text("Text 4543"),
            new Text("Text 13")
      };

      final ObjectDetector objectDetector = new ObjectDetector();
      final Detection detection = objectDetector.detect(
            new Image(imageWidth, imageHeight),
            textsAvailable,
            count
      );

      print(detection);
   }

   private static void print(Detection detection) {
      // ...
   }
}

```