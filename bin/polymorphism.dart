 // membuat class induk dan class turunan / polymorphism
 class Animal{
  String name;
  Animal(this.name);
}

class Dog extends Animal{
  Dog(String name) : super(name);
}

class Cat extends Dog{
  Cat(String name) : super(name);
  
}
// polymorphism
 void sayAnimal(Animal animal){
  print("This is a ${animal.name}");
 }
  
// type check and cast
 void checkAnimal(Animal animal){
  if (animal is Dog){
    Dog dog = animal as Dog;
    print("This is as Animal, and its name is ${dog.name}");
  }else if (animal is Cat){
    Cat cat = animal as Cat;
    print("This is as Vegetable, and its name is ${cat.name}");
  }else{
    print("Hello Animal ${animal.name}");
  }
 } 

 void main(){
  checkAnimal(Animal("Goat"));
  checkAnimal(Dog("Bulldog"));
  checkAnimal(Cat("Kitty"));
 }