abstract class Animal{}



abstract class Mammal extends Animal{
  
}

abstract class Bird extends Animal{
  
}

abstract class Fish extends Animal{
  
}

abstract class Flyer{
  void fly() => print("Estoy volando");
}

abstract class Walker{
  void walk() => print("Estoy caminando");
}

abstract class Swimmer{
  void swing() => print("Estoy nadando");
}

class Dolphin extends Mammal with Swimmer{}
class Bat extends Mammal with Walker, Flyer{}
class Cat extends Mammal with Walker{}

class Pigeon extends Bird with Walker, Flyer {}
class Duck extends Bird with Walker, Flyer, Swimmer {}

class Shark extends Fish with Swimmer {}


void main(){
  final duck = new Duck();
  duck.fly();
  
  final shark =  new Shark();
  shark.swing();
  
}
