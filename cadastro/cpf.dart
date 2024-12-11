import 'package:flutter/material.dart';
import 'package:nubank/cadastro/entrada.dart';
import 'package:nubank/cadastro/nome.dart';
import 'package:nubank/data/cpfService.dart';
import 'package:nubank/home.dart';

class CPFPage extends StatelessWidget {
  CPFPage({super.key});

  final TextEditingController _cpfController =
      TextEditingController(); // Controlador do CPF

  final CpfService _cadastroService = CpfService(); // Instância do serviço

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
                  'Boas-vindas ao Nubank!\nPara começar, qual o seu CPF?',
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
                  controller: _cpfController, // Vincula o controlador ao campo
                  decoration: InputDecoration(
                    hintText: '000.000.000-00',
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
                final cpf = _cpfController.text; // Captura o CPF do campo

                if (cpf.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Por favor, insira um CPF válido.')),
                  );
                  return;
                }

                try {
                  // Salva o CPF no serviço
                  await CpfService().salvarUsuario(cpf: cpf);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('CPF salvo com sucesso!')),
                  );

                  // Navega para a próxima página
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Nome()),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Erro ao salvar CPF: $e')),
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
