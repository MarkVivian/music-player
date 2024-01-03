/* Using var keyword (type is inferred based on the value)*/
var variableName = "value";
int value = 12;
dynamic name = "mark vivian";
String? named;
const double? NotNull = .98;
Map<String, int> testing = {"age": 1, "age1": 2};
List<Map<String, int>> listtesting = [
  {"file": 1, "file2": 2},
  {"state": 1, "state1": 2}
];

int calculation(int a, int b) {
  return (b * a);
}

main() {
  print(variableName);
  print(value);
  print(name);
  print("my name is $name and my age is $value");
  print(named);
  print(calculation(123, 987));
  print(testing.keys);
  print(testing['age']);
  print(testing.values);
  print(listtesting[0].values);
  print(listtesting[1].keys);
  print(listtesting.map(
    (e) {
      return e.values;
    },
  ));
}

/* Explicitly specifying the type */
//dataType variableName = value;

/*
/* DATA TYPES */
Dart has various data types for variables. Some commonly used ones include:

Numbers: int (integer) and double (floating-point number).
Strings: String (sequence of characters, denoted using single or double quotes).
Boolean: bool (true or false).
Lists: List (ordered collection of elements).
Maps: Map (unordered collection of key-value pairs). similar to objects in typescript.
Other data types: DateTime, dynamic, etc.


. /* DYNAMIC TYPING */
Dart is a dynamically typed language, meaning you can change the type of a variable later in the code:
similar to any in typescript..

dynamic variable = 5;
variable = "hello";
While dynamic typing provides flexibility, it's generally recommended to use explicit typing whenever possible to improve code readability and catch type-related errors early.


/* FINAL AND CONST */
You can use the final and const keywords to declare constants:

final int age = 30; // Value can't be changed after initialization.
const double pi = 3.14159; // Compile-time constant (value must be known at compile time).


/* NULL SAFETY */
Starting from Dart 2.12, Dart supports null safety. This means you need to explicitly specify if a variable can be nullable or non-nullable:

int? nullableNumber = null; // Nullable variable, can hold null.
int nonNullableNumber = 42; // Non-nullable variable, can't hold null.


/* SCOPE */
Variables have a scope, which defines where they are accessible. Dart follows lexical scoping, where variables declared inside a block (e.g., inside a function or a loop) are only accessible within that block:

void exampleFunction() {
  int x = 5; // x is only accessible within this function.
}


/* INTERPOLATION */
Dart supports string interpolation to embed variables within a string:

String name = "Alice";
int age = 25;
print("My name is $name and I am $age years old.");


/* CONSTANTS IN CLASS */
In Dart, you can also define class-level constants using the static const keywords:

class Constants {
  static const int maxScore = 100;
}
These are some of the key concepts you need to know about variables in Dart. By mastering variables, you'll have a solid foundation to build more complex and dynamic applications using Flutter or any other Dart-based framework. Happy coding!
*/
