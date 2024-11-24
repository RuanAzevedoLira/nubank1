import 'package:flutter/material.dart';
import 'package:nubank/conta/minhaConta.dart';
import 'package:nubank/home.dart';
import 'package:nubank/config_nubank/config_conta.dart';
import 'package:nubank/conta/notificacao.dart';

class Configuracoes extends StatefulWidget {
  const Configuracoes({super.key});

  @override
  _ConfiguracoesState createState() => _ConfiguracoesState();
}

class _ConfiguracoesState extends State<Configuracoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: const Text('Configurações',
            style: TextStyle(color: Color(0xff000000))),
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xff000000)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Color(0xff000000)),
            onPressed: () {},
          ),
          IconButton(
            icon:
                const Icon(Icons.notifications_none, color: Color(0xff000000)),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Notificacao()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // Área de Seguros
          ListTile(
            leading: const Icon(Icons.umbrella, color: Color(0xff000000)),
            title: const Text('Área de Seguros',
                style: TextStyle(color: Color(0xff000000))),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Conheça',
                style: TextStyle(
                    color: Color(0xff000000), fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {},
          ),
          const Divider(color: Color(0xff000000)),

          // Configurações
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Configurações',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Color(0xff000000)),
            title: const Text('Configurar',
                style: TextStyle(color: Color(0xff000000))),
            subtitle: const Text(
              'Cartão, Conta, Pix, Perfil',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: const Icon(Icons.chevron_right, color: Color(0xff000000)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConfigScreen()),
              );
              //
            },
          ),
          const Divider(color: Colors.grey),

          // Outros
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Outros',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.description, color: Color(0xff000000)),
            title: const Text('Documentos',
                style: TextStyle(color: Color(0xff000000))),
            trailing: const Icon(Icons.chevron_right, color: Color(0xff000000)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
