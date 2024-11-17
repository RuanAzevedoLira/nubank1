import 'package:flutter/material.dart';
import 'package:nubank/conta/minhaConta.dart';

class Notificacao extends StatefulWidget {
  const Notificacao({super.key});

  @override
  _NotificacaoState createState() => _NotificacaoState();
}

class _NotificacaoState extends State<Notificacao> {
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
            icon: const Icon(Icons.arrow_back),
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
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Ação para o ícone de configuração
              },
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            //parte temporária

            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.payments),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Transferência recebida")],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Você recebeu uma transferência de R\$ 55,00 de MÃE"),
                      Text("Hoje • 12:30")
                    ],
                  ),
                ),
                const Divider(color: Colors.grey),
                ListTile(
                  leading: Icon(Icons.payments),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Transferência recebida")],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Você recebeu uma transferência de R\$ 3,00 de AMIGO POBRE"),
                      Text("Hoje • 9:45")
                    ],
                  ),
                ),
                const Divider(color: Colors.grey),
                ListTile(
                  leading: Icon(Icons.money_off),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Compra no crédito negada")],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Compra de R\$ 150,00 NEGADA em AMAZOM.COM/CARRINHO para o cartão com o final 1234, pois o limite disponível não é o suficiente."),
                      Text("Ontem • 21:58")
                    ],
                  ),
                ),
                const Divider(color: Colors.grey),
              ],
            )

            //fim da parte temporária
          ],
        ),
      ),
    );
  }
}
