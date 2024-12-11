import 'package:flutter/material.dart';

import 'package:nubank/conta/saldo/saldo_separado.dart';
import 'package:nubank/home.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:nubank/cadastro/cpf.dart';

Future<void> main() async {
  const keyApplicationId = 'WeRZRTcM2UjNWk3UoWG81MIiprw1xBGvca3jHFdB';
  const keyClientKey = '8UQRWAjTqIWWUJBL1Q1BHXpvHP1fJ9WBAD7PICQd';
  const keyParseServerUrl = 'https://parseapi.back4app.com';
  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      home: CPFPage(),
    );
  }
}
