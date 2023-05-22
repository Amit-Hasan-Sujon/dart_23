main() {
  Car ferrari = Car("Ferrari", "Ferrari f40", 2020);

  ferrari.drive(12.5);

  // Print out the brand, model, year, and miles driven for each car using the
  print('Brand Name: ${ferrari.getBrand()}');
  print('Model Name: ${ferrari.getModel()}');
  print('Year: ${ferrari.getYear()}');
  print('Get Miles Driven: ${ferrari.getMilesDriven()}');

  print('Age of the car : ${ferrari.getAge()}');

  print('Total number of Car objects created: ${Car.numberOfCars}');

  print("           ");

  ///Tow number car Object
  Car prado = Car("Prado", "Prado V8", 2015);

  prado.drive(30.0);

  // Print out the brand, model, year, and miles driven for each car using the
  print('Brand Name: ${prado.getBrand()}');
  print('Model Name: ${prado.getModel()}');
  print('Year: ${prado.getYear()}');
  print('Get Miles Driven: ${prado.getMilesDriven()}');

  print('Age of the car is: ${prado.getAge()}');

  print('Total number of Car objects created: ${Car.numberOfCars}');

  print("           ");

  ///Three number car Object
  Car audi = Car("Audi", "Audi r8 spyder", 2020);

  audi.drive(100.0);

  // Print out the brand, model, year, and miles driven for each car using the
  print('Brand Name: ${audi.getBrand()}');
  print('Model Name: ${audi.getModel()}');
  print('Year: ${audi.getYear()}');
  print('Get Miles Driven: ${audi.getMilesDriven()}');

  print('Age of the car is: ${audi.getAge()}');

  print('Total number of Car objects created: ${Car.numberOfCars}');
}

// Create a class with name Car:
class Car {
  String brand;
  String model;
  int year;
  double milesDriven = 0.0;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year) {
    numberOfCars++;
  }

  double drive(double miles) => this.milesDriven = miles;

  getMilesDriven() => this.milesDriven;

  getBrand() => this.brand;

  getModel() => this.model;

  getYear() => this.year;

  var currDt = DateTime.now();
  getAge() => currDt.year - this.year;
}
