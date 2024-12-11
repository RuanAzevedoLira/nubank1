import 'package:flutter/material.dart';
import 'package:nubank/conta/saldo/separar.dart';
import 'package:nubank/home.dart';
import 'package:nubank/conta/minhaConta.dart';
import 'package:nubank/conta/historico.dart';
import 'package:nubank/seguro_vida.dart';

class SaldoSeparado extends StatelessWidget {
  const SaldoSeparado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Saldo Separado",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff7801db),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color(0xFFF5F5F5),
          onPressed: () {
            // Navegar de volta para a página Minha Conta
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MinhaConta()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            color: const Color(0xFFF5F5F5),
            onPressed: () {
              // Ação para o ícone de interrogação
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Saldo Disponível',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'R\$ 9000',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            // Container para "Saldo Separado"
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Saldo Separado',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Você vai usar o valor em breve e quer separar do seu saldo.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Valor total',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Separar()),
                              );
                              // Ação do botão "Separar"
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff7801db),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              'Separar',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'R\$ 0,00',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SeguroVida()),
                              );
                            },
                            child: const Text(
                              'Ir para detalhes',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff7801db),
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
