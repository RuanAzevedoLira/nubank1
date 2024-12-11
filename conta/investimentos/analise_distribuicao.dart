import 'package:flutter/material.dart';

class AnaliseDistribuicaoPage extends StatelessWidget {
  const AnaliseDistribuicaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Alinha os itens à esquerda
      children: [
        const SizedBox(height: 24), // Adiciona um pequeno espaçamento no topo
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centraliza horizontalmente
          children: [
            // Gráfico menor
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
              ),
              child: const Center(
                child: Text(
                  'Gráfico',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16), // Espaçamento entre gráfico e texto
            // Texto ao lado do gráfico
            const Flexible(
              child: Text(
                'Você tem um perfil de investimentos conservador',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
