# Adapter
## Cel
Celem zadania jest weryfikacja umiejętności wykorzystania wzorców projektowych w praktyce na przykładzie wzorca **adapter**.
## Opis zadania

Załóżmy, że mamy klasę **Element** posiadającą dwa atrybuty:

 - **type** (może przyjmować jedną z dwóch wartości: **TYPE_1**, **TYPE_2**)
 - **value** (liczba zmiennoprzecinkowa)
 
oraz klasę **StatisticsPrinter** z jedną publiczną metodą **print(Statistics statistics)**, gdzie interfejs **Statistics** zdefiniowany jest następująco:

    public interface Statistics {
	    double getMinValue();
	    double getMaxValue();
	    double getAverage();
	    int getElementCount();
	    int getUniqueElementCount();
	}
**StatisticsPrinter** posiada jeden zakres odpowiedzialności. Odpowiada za drukowanie na standardowym wyjściu wartości zwracanych za pomocą interfejsu **Statistics**.

Zaimplementuj klasy **Element** i **StatisticsPrinter**. W metodzie **main** stwórz kolekcję zawierającą dowolną ilość instancji klasy **Element**, a następnie wypisz statystyki dla tej kolekcji za pomocą instancji klasy  **StatisticsPrinter** dla:
 - wszystkich elementów listy
 - wszystkich elementów listy o typie **TYPE_1**
 - wszystkich elementów listy o typie **TYPE_2**
	 > Zauważ, że interfejs kolekcji nie odpowiada temu, którego potrzebuje metoda **print**.

Użyj wzorca projektowego **adapter**, aby umożliwić współpracę kolekcji elementów typu **Element** z klasą **StatisticsPrinter**.

Rozwiązaniem zadania jest projekt **gradle** z kodem źródłowym w języku **Java 11** (katalog **src**, pliki **build.gradle** oraz **settings.gradle**) spełniający powyższe wymagania.
