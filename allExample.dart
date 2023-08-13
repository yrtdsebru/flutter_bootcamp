// Üst Sınıf (Superclass)
class Animal {
  String name;
  
  // Ana constructor
  Animal(this.name);  // sınıfın özelliği this ile kullanılabilir.
  
  void makeSound() {
    print("Animal makes a sound");
  }
}

// Alt Sınıf (Subclass)
class Dog extends Animal {
  String breed;
  
  // Ana constructor
  Dog(String name, this.breed) : super(name);  //super ile miras alınan sınıfın özelliği kullanılabilir.
  
  @override
  void makeSound() {
    print("Dog barks");
  }
  
  void fetch() {
    print("Dog fetches a ball");
  }
}


class Calculator {
  int add(int a, [int b = 0]) {
    return a + b;
  }
}

//null or default
void printUserInfo(String name, int? age ,[String city = "Unknown"]) {    //(normal,null,default)
  print("\nName: $name");
  print("Age: $age");
  print("City: $city\n");
}


//Bir parametreye required anahtar kelimesi eklenirse, bu parametrenin nesne oluşturulurken kesinlikle 
//sağlanması gerektiği anlamına gelir. Yani, bu parametrenin değeri boş veya null olamaz. 
class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

void main() {

  //***********************************************************/  
  // Kalıtım ve Geçersiz Kılma
  var dog = Dog("Buddy", "Golden Retriever");
  
  print("Dog's name: ${dog.name}");
  print("Dog's breed: ${dog.breed}");
  dog.makeSound(); // Alt sınıfta geçersiz kılınmış metot çağrılır
  dog.fetch(); // Sadece alt sınıfa özgü metot

  //***********************************************************/  
  // Aşırı Yükleme
  var calculator = Calculator();
  print(calculator.add(2));     // 2 (b değeri varsayılan olarak 0)
  print(calculator.add(2, 3));  // 5

  //***********************************************************/
  printUserInfo("Alice",null);           // Name: Alice, City: Unknown
  printUserInfo("Bob", 25);    // Name: Bob, Age: 25, City: Unknown
  printUserInfo("Charlie", 30, "New York"); // Name: Charlie, Age: 30, City: New York

  //***********************************************************/
  //Alt satırdaki ornek Hata verir, çünkü name ve age parametreleri zorunludur.
  //var person = Person();
  
  // Doğru kullanım
  var person2 = Person(name: "Alice", age: 30);
  print("Name: ${person2.name}, Age: ${person2.age}");
}
