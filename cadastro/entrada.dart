import 'package:flutter/material.dart';
import 'package:nubank/cadastro/cpf.dart';
import 'package:nubank/data/nomeService.dart'; // Certifique-se de importar corretamente.

class Entrada extends StatelessWidget {
  const Entrada({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();

    Future<void> _salvarNomeEAvancar(BuildContext context) async {
      String nome = _nameController.text.trim();

      if (nome.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Por favor, insira seu nome completo.')),
        );
        return;
      }

      try {
        // Usando a chamada direta para salvar o nome.
        await NomeService().salvarUsuario(nome: nome);
        // Navegar para a página CPFPage.
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CPFPage()),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao salvar o nome: $e')),
        );
      }
    }

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
                  'Qual seu nome completo?',
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
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'Insira seu nome aqui',
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () => _salvarNomeEAvancar(context),
              backgroundColor: Color(0xffffffff),
              child: Icon(Icons.arrow_forward, color: Color(0xff000000)),
            ),
          ),
        ],
      ),
    );
  }
}
