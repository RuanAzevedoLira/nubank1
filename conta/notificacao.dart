import 'package:flutter/material.dart';
import 'package:nubank/config_nubank/configuracoes.dart';
import 'package:nubank/conta/minhaConta.dart';
import 'package:nubank/data/notificacaoGenerator.dart';

class Notificacao extends StatefulWidget {
  const Notificacao({super.key});

  @override
  State<Notificacao> createState() => _NotificacaoState();
}

class _NotificacaoState extends State<Notificacao> {
  late TextEditingController control;

  @override
  void initState() {
    super.initState();
    control = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Notificações",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff7801db),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: const Color(0xFFF5F5F5),
            ),
            onPressed: () {
              // Navegar de volta para a página Home
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MinhaConta()),
              );
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: const Color(0xFFF5F5F5),
              ),
              onPressed: () {
                // Ação para o ícone de configuração
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Configuracoes()),
                );
                //
              },
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [Notificacaogenerator(control.text)],
        ),
      ),
    );
  }
}
