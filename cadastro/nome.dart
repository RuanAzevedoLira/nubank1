import 'package:flutter/material.dart';
import 'package:nubank/cadastro/entrada.dart';
import 'package:nubank/cadastro/nome.dart';
import 'package:nubank/data/nomeService.dart';
import 'package:nubank/home.dart';

class Nome extends StatelessWidget {
  Nome({super.key});

  final TextEditingController _nomeController =
      TextEditingController(); // Controlador do Nome

  final NomeService _cadastroService = NomeService(); // Instância do serviço

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Boas-vindas ao Nubank!\n qual seu nome completo?',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Precisamos dele para dar início ao seu cadastro.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _nomeController, // Vincula o controlador ao campo
                  decoration: InputDecoration(
                    hintText: 'Insira seu nome aqui',
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () async {
                final nome = _nomeController.text; // Captura o nome do campo

                if (nome.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Por favor, insira um nome válido.')),
                  );
                  return;
                }

                try {
                  // Salva o Nome no serviço
                  await NomeService().salvarUsuario(nome: nome);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Nome salvo com sucesso!')),
                  );

                  // Navega para a próxima página
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Erro ao salvar o Nome: $e')),
                  );
                }
              },
              backgroundColor: Color(0xffffffff),
              child: Icon(Icons.arrow_forward, color: Color(0xff000000)),
            ),
          ),
        ],
      ),
    );
  }
}
