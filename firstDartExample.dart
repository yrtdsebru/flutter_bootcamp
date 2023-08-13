void main(List<String> args) async {
  //you can make comment line with (ctrl+k & ctrl+c)
  //you can remove comment line with (ctrl+k & ctrl+u)
  
  // var x = "Hello World";
  // var y = 1;
  // var z = 2.0;
  // var a = true;
  // var b = false;
  // var c = null;
  // var d = [1, 2, 3];
  // var e = {"a": 1, "b": 2, "c": 3};
  // var f = () => print("Hello World");
 // callbacks
  // var xx =
  //     await AdressRepository(typeNumber: "New Value - 1 ").fetchUserAdress();
  // var xxx =
  //     await AdressRepository(typeNumber: "New Value -2 ").fetchUserAdress2();

  var adressRepository = await AdressRepository(typeNumber: "New Value - 3 ");

  var newAdressMethod = await adressRepository.fetchUserAdress();
  var newAdressMethod1 = await adressRepository.fetchUserAdress2();

  print(newAdressMethod);
  print(newAdressMethod1);

  // print(xx);
  // print(xxx);
}

// out line function

class AdressRepository {
  String typeNumber;
  AdressRepository({this.typeNumber = "1"});
  Future<String> fetchUserAdress({String name = "John"}) async {
    await Future.delayed(Duration(seconds: 2));
    return "User Adress  1 -   $typeNumber";
  }

  Future<String> fetchUserAdress2({String name = "John"}) async {
    await Future.delayed(Duration(seconds: 3));
    return "User Adress 2 -  $typeNumber";
  }
}
