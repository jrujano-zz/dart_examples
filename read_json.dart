import 'dart:convert';

void main() {
  final rawJson = '{"first_name":"Pedro","last_name":"Perez"}';
  Map parsedJson = json.decode(rawJson);
  //print(rawJson);
  final persona = new Persona.fromJson(parsedJson);
  print(persona);
}

class Persona {
  String firstName;
  String lastName;

  Persona({this.firstName, this.lastName});
  Persona.fromJson(Map parsedJson) {
    firstName = parsedJson['first_name'];
    lastName = parsedJson['last_name'];
  }

  String toString() => 'namefull: $firstName $lastName';
}
