void main() {
  print('WEEK 1 DART PRACTICE LAB \n');

  print('--- EX 1: Type Inference ---');
  
  // Declare an int variable using var and let Dart infer its type
  var inferredInt = 42; 
  print('Inferred int type: ${inferredInt.runtimeType}'); 

  // Define a variable with an explicit String type
  String explicitString = "Hello, Dart!";
  print('Explicit string: $explicitString\n');


  print('--- EX 2: Null Safety ---');
  
  // Declare a nullable integer variable and assign it a null value
  int? nullableInt = null;
  print('Nullable int initial value: $nullableInt');

  // Declare a non-nullable integer variable and assign it a value
  int nonNullableInt = 10;
  print('Non-nullable int: $nonNullableInt');

  // Assign a new value to the nullable variable
  nullableInt = 25;
  print('Nullable int new value: $nullableInt\n');


  print('--- EX 3: Final vs Const ---');
  
  // Declare a final variable and assign it the current date and time
  final DateTime now = DateTime.now();
  print('Final DateTime (runtime): $now');

  // Declare a const variable with an integer value
  const int maxRetries = 3;
  print('Const int (compile-time): $maxRetries');

  print('--- EX 4: Collections & Strings ---');
  
  // Strings
  String firstName = "Jane";
  String lastName = "Doe";
  int age = 28;

  // Concatenate using String Interpolation (Best Practice in Dart)
  String result = "$firstName $lastName, Age: $age";
  print('String result: $result');

  // Lists
  List<int> numbers = [10, 20, 30];
  numbers.add(40);          
  numbers.remove(20);       
  numbers.insert(0, 5);     
  print('Modified List: $numbers');

  // Iterate over the list
  print('List iteration:');
  for (var num in numbers) {
    print('  - $num');
  }

  // Maps
  Map<String, int> scores = {"Alice": 95, "Bob": 80};
  scores["Charlie"] = 88;   
  scores.remove("Bob");     
  print('Modified Map: $scores');

  // Iterate over the map
  print('Map iteration:');
  scores.forEach((key, value) {
    print('  - $key scored $value');
  });
  print('');

  print('--- EX 5: Loops & Conditions ---');
  
  // Use a for-loop to print numbers from 1 to 5
  print('For loop:');
  for (int i = 1; i <= 5; i++) {
    print('  $i');
  }

  // Use a while-loop to print numbers while a condition is true
  print('While loop:');
  int counter = 1;
  while (counter <= 3) {
    print('  Counter: $counter');
    counter++;
  }

  // Use an if-else statement to check if a number is even or odd
  int numberToCheck = 7;
  if (numberToCheck % 2 == 0) {
    print('$numberToCheck is Even');
  } else {
    print('$numberToCheck is Odd');
  }
  print('');


  print('--- EX 6: Functions ---');
  
  // Define a function that takes two integers and returns their sum
  int sum(int a, int b) {
    return a + b;
  }
  print('Sum (Positional): ${sum(5, 3)}');

  // Define a function that uses positional arguments
  double calcVolume(double length, double width, double height) {
    return length * width * height;
  }
  print('Volume (Positional): ${calcVolume(10.0, 5.0, 2.0)}');

  // Define a function that uses named arguments with the required keyword
  double getArea({required double length, required double width}) {
    return length * width;
  }
  // Call with named arguments (order doesn't matter!)
  print('Area (Named): ${getArea(width: 5.0, length: 10.0)}');

  // Define a function using arrow syntax that squares a number
  int square(int n) => n * n;
  print('Square (Arrow syntax): ${square(4)}');

  // Optional Positional Argument Example
  void greet([String name = "Guest"]) {
    print('  Hello, $name');
  }
  print('Optional Positional:');
  greet();        
  greet("Alice"); 

  // Optional Named Argument Example
  void configureConnection({int timeout = 30, String? protocol}) {
    print('  Timeout: $timeout, Protocol: $protocol');
  }
  print('Optional Named:');
  configureConnection(); /\
  configureConnection(timeout: 60, protocol: "HTTPS"); 

  print('\n=== LAB COMPLETE ===');
}