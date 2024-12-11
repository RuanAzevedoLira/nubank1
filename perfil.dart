import 'package:flutter/material.dart';
import 'package:nubank/home.dart';
import 'package:nubank/config_nubank/configuracoes.dart';
import 'package:nubank/conta/notificacao.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            icon: const Icon(Icons.mark_email_read_outlined,
                color: Color(0xff000000)),
            onPressed: () {},
          ),
          IconButton(
            icon: ImageIcon(
              color: Colors.black,
              AssetImage(
                "imagens/setting.png",
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Configuracoes()),
              );
            },
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 80,
            width: double.infinity,
            child: ListView(
              children: [
                Container(
                  child: ListTile(
                    leading: const Icon(
                      Icons.add_photo_alternate,
                    ),
                    title: const Text('Adrielle',
                        style: TextStyle(color: Colors.black)),
                    subtitle: const Text(
                      'Agencia 0001 - Conta 945768392-5',
                      style: TextStyle(color: Colors.grey),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: Colors.grey[400]),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 80,
            width: double.infinity,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Cor do fundo do container
                    borderRadius: BorderRadius.circular(16), // Raio das bordas
                  ),
                  child: ListTile(
                    title: const Text('Nubank+',
                        style: TextStyle(color: Colors.purple)),
                    subtitle: const Text(
                      'Evolua sua experiência com o Nubank.',
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: const Icon(Icons.chevron_right,
                        color: Color(0xff000000)),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: Colors.grey[400]),
          SizedBox(height: 8),
          Container(
            height: 80,
            width: double.infinity,
            child: ListView(
              children: [
                Container(
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.purple[100], // Cor do fundo do container
                        borderRadius:
                            BorderRadius.circular(100), // Raio das bordas
                      ),
                      child: Icon(Icons.add, color: Colors.purple),
                    ),
                    title: const Text('Abrir Conta PJ',
                        style: TextStyle(color: Colors.black)),
                    subtitle: Text(
                      'Crie a conta da sua empresa',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Container(
                      height: 20,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.purple, // Cor do fundo do container
                        borderRadius:
                            BorderRadius.circular(4), // Raio das bordas
                      ),
                      child: Center(
                        child: const Text('Conheça',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: Colors.grey[400]),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 110,
            width: double.infinity,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Cor do fundo do container
                    borderRadius: BorderRadius.circular(16), // Raio das bordas
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.account_balance,
                        color: Color(0xff000000)),
                    title: const Text('Open Finance',
                        style: TextStyle(color: Colors.black)),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Cor do fundo do container
                    borderRadius: BorderRadius.circular(16), // Raio das bordas
                  ),
                  child: ListTile(
                    leading:
                        const Icon(Icons.person_add, color: Color(0xff000000)),
                    title: const Text('Convidar amigos',
                        style: TextStyle(color: Colors.black)),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(thickness: 1, color: Colors.grey[400]),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 50,
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 90),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Cor do fundo do container
                borderRadius: BorderRadius.circular(20), // Raio das bordas
              ),
              child: Row(
                // Raio das bordas
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  RotatedBox(
                    quarterTurns: 2,
                    child: ImageIcon(
                      color: Colors.black,
                      AssetImage(
                        "imagens/return.png",
                      ),
                    ),
                  ),
                  const Text('Sair do aplicativo',
                      style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
