import 'package:flutter/material.dart';
import 'package:nubank/data/database.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class Usuario {
  String nome;
  String email;

  Usuario({required this.nome, required this.email});

  factory Usuario.fromParseObject(ParseObject object) {
    return Usuario(
      nome: object.get<String>('nome') ?? '',
      email: object.get<String>('email') ?? '',
    );
  }

  ParseObject toParseObject() {
    final parseObject = ParseObject('Usuario');
    parseObject.set('nome', nome);
    parseObject.set('email', email);
    return parseObject;
  }
}
