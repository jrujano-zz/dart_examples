import 'dart:convert';

void main() {
  final rawJson = '{"first_name":"Pedro","last_name":"Perez"}';
  Map parsedJson = json.decode(rawJson);
  //print(rawJson);
  final persona = new Persona.fromJson(parsedJson);
  print(persona);
}

class Persona {
  String first_name;
  String last_name;

  Persona({this.first_name, this.last_name});
  Persona.fromJson(Map parsedJson) {
    first_name = parsedJson['first_name'];
    last_name = parsedJson['last_name'];
  }

  String toString() => 'namefull: $first_name $last_name';
}
