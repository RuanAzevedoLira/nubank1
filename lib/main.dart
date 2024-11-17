import 'package:flutter/material.dart';
import 'package:nubank/conta/saldo/saldo_separado.dart';
import 'package:nubank/home.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<void> main() async {
  const keyApplicationId = 'XzWSLh4ZwOBoevUj7ZLk60X67wmdqMqr50KIm3E9';
  const keyClientKey = 'e0OInIrh50d98JegF1WodN9HBMO6E0yop9tRx1ae';
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
    return const MaterialApp(
      title: "Home",
      home: Home(),
    );
  }
}
