import 'package:equatable/equatable.dart';

// A simple Person class using Equatable
class Person extends Equatable {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}

void main() {
  final person1 = Person(name: 'Alice', age: 30);
  final person2 = Person(name: 'Alice', age: 30);
  final person3 = Person(name: 'Bob', age: 25);

  print(person1 == person2); // true, because their values are equal
  print(person1 == person3); // false, because their values are different
}