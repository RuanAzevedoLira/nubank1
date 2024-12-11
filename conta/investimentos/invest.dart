import 'package:flutter/material.dart';
import 'package:nubank/conta/minhaConta.dart';
import 'package:nubank/conta/investimentos/minha_organizacao.dart';
import 'package:nubank/conta/investimentos/analise_distribuicao.dart';

class Invest extends StatelessWidget {
  const Invest({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Número de abas
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Investimentos",
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
              // Resumo de investimentos
              const Text(
                'Total em Investimentos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'R\$ 1.1000,50',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'R\$ 1,65 de rendimento',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 12),
              // Botão Investir ajustado
              Align(
                alignment: Alignment.centerLeft, // Alinha à esquerda
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xff7801db), // Cor personalizada
                    foregroundColor: Colors.white, // Texto branco
                    minimumSize:
                        const Size(120, 40), // Largura e altura mínimas
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8), // Bordas arredondadas
                    ),
                  ),
                  onPressed: () {
                    // Ação ao clicar no botão "Investir"
                  },
                  child: const Text('Investir'),
                ),
              ),
              const SizedBox(height: 8), // Reduzido o espaço
              const TabBar(
                tabs: [
                  Tab(text: 'Minha organização'),
                  Tab(text: 'Análise'),
                ],
              ),
              const SizedBox(height: 8), // Reduzido o espaço
              // Conteúdo das abas
              SizedBox(
                height: 200, // Define a altura fixa para o conteúdo das abas
                child: TabBarView(
                  physics:
                      const NeverScrollableScrollPhysics(), // Desativa a rolagem lateral
                  children: [
                    MinhaOrganizacaoPage(), // Página "Minha organização"
                    AnaliseDistribuicaoPage(), // Página "Análise de distribuição"
                  ],
                ),
              ),
              const Divider(thickness: 1, color: Colors.grey),
              const SizedBox(height: 8), // Reduzido o espaço
              const Text(
                'Seguros',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8), // Mantido o espaço para clareza visual
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(Icons.credit_card,
                            size: 25,
                            color: Color(0xff000000)), // Ícone de cartão
                        const SizedBox(
                            width: 10), // Espaço entre o ícone e o texto
                        const Text(
                          "Seguro Vida",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(Icons.credit_card,
                            size: 25,
                            color: Color(0xff000000)), // Ícone de cartão
                        const SizedBox(
                            width: 10), // Espaço entre o ícone e o texto
                        const Text(
                          "Seguro Celular",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(Icons.credit_card,
                            size: 25,
                            color: Color(0xff000000)), // Ícone de cartão
                        const SizedBox(
                            width: 10), // Espaço entre o ícone e o texto
                        const Text(
                          "Seguro Residencial",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
