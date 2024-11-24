import 'package:flutter/material.dart';
import 'package:nubank/home.dart';
import 'package:nubank/conta/historico.dart';
import 'package:nubank/conta/saldo/saldo_separado.dart';
import 'package:nubank/conta/notificacao.dart';
import 'package:nubank/config_nubank/configuracoes.dart';

class MinhaConta extends StatelessWidget {
  const MinhaConta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7801db),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navegar de volta para a página Home
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () {
              // Ação para o ícone de interrogação
            },
          ),
          IconButton(
            icon: const Icon(
                Icons.settings), // Ícone de configurações (engrenagem)
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Configuracoes()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Ação para o ícone de notificação
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Notificacao()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
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
              'R\$ 1000',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            // Card com ListView
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
              ),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    leading: const Icon(Icons.account_balance_wallet),
                    title: const Text('Saldo Separado'),
                    subtitle: const Text('R\$0,00'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SaldoSeparado()),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.history),
                    title: const Text('Tudo certo com as suas contas?'),
                    subtitle: const Text('Ir para Assistente de pagamentos'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Ação ao clicar no item
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.show_chart),
                    title: const Text('Total de Investimento'),
                    subtitle: const Text('R\$200'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Ação ao clicar no item
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            // ListView Horizontal
            SizedBox(
              height: 100, // Altura da ListView
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Scroll horizontal
                child: Row(
                  children: [
                    _buildHorizontalItem(Icons.attach_money, 'Depositar'),
                    _buildHorizontalItem(Icons.payment, 'Pagar'),
                    _buildHorizontalItem(Icons.account_balance, 'Empréstimos'),
                    _buildHorizontalItem(Icons.pix, 'Transferir'),
                    _buildHorizontalItem(Icons.trending_up, 'Investir'),
                    _buildHorizontalItem(Icons.request_page, 'Cobrar'),
                    _buildHorizontalItem(Icons.work_outline, 'Seu salário'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Linha de divisão
            const Divider(color: Colors.grey),
            const SizedBox(height: 20), // Espaço após a linha

            // Novo Container com Ícone e Texto
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.attach_money,
                      size: 30, color: Colors.black87),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'Até R\$ 2.000,00 disponíveis para empréstimo.',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            const Divider(color: Colors.grey),
            // Adicionando o histórico
            const Historico(),
          ],
        ),
      ),
    );
  }

  // Função para construir cada item da ListView horizontal
  Widget _buildHorizontalItem(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[200],
            child: Icon(icon, size: 30, color: Colors.black87),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
