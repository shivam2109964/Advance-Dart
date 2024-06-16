/// In Dart, runtimeType is a built-in getter that returns the Type of the current instance
/// of an obect at runtime.
/// It is defined in the object class, which is the root of the dart class hierarchy.
/// Type Comparison: You can compare runtimeType with other types using Dart's
/// type checking mechanisms (like `is`, `as`, or `runtimeType ==`)
/// which can help in making decision based on object types.

class Animal {
  void makeSound() {
    print("Some Sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof");
  }
}

void main() {
  Animal animal = Dog();
  print(animal.runtimeType);

  if (animal.runtimeType == Dog) {
    Dog dog = animal as Dog;
    dog.makeSound();
  }
}
