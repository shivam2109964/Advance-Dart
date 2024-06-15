/// Think of [hashCode] is a speical number tha is generated for each object.
/// This number helps to identify the object quickly, especially when dealing
/// with collections of object.

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

void main() {
  Person person = Person("Shivam", 22);
  Person person1 = Person("Shivam", 22);
  Person perons3 = Person("Moon", 18);

  print(person == person1);
  print(person1 == perons3);
  print(person.hashCode);
  print(person1.hashCode);
  print(perons3.hashCode);
}
