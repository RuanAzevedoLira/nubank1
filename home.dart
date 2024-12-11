import 'package:flutter/material.dart';
import 'package:nubank/area_pix.dart';
import 'package:nubank/conta/minhaConta.dart';
import 'cartoes_screen.dart';
import 'package:nubank/perfil.dart';
import 'package:nubank/conta/faturaCredito.dart';
import 'package:nubank/seguro_vida.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isBalanceVisible =
      true; // Variável para controlar a visibilidade do saldo

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppBar",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff7801db), // Cor da Nubank
          leading: IconButton(
            icon: const Icon(Icons.person_outline),
            color: const Color(0xFFF5F5F5), // Ícone de perfil
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Perfil()),
              );
              // Ação ao clicar no ícone de perfil
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                _isBalanceVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
              ),
              color: const Color(0xFFF5F5F5), // Ícone de visão
              onPressed: () {
                setState(() {
                  _isBalanceVisible =
                      !_isBalanceVisible; // Alterna a visibilidade
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.question_mark_rounded),
              color: const Color(0xFFF5F5F5), // Ícone de interrogação
              onPressed: () {
                // Ação ao clicar no ícone de interrogação
              },
            ),
            IconButton(
              icon: const Icon(Icons.mark_email_read_outlined),
              color: const Color(0xFFF5F5F5), // Ícone de mensagem
              onPressed: () {
                // Ação ao clicar no ícone de mensagem
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Card que leva à página MinhaConta
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MinhaConta()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.transparent, // Deixa o fundo transparente
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Conta',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _isBalanceVisible ? 'R\$ 1000' : '******',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Botões de ação
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.pix),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Area_PIX()),
                          );
                        },
                      ),
                      Text(
                        "Área Pix",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.money),
                        onPressed: () {
                          // Ação ao clicar no botão
                        },
                      ),
                      Text(
                        "Pagamento",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.qr_code),
                        onPressed: () {
                          // Ação ao clicar no botão
                        },
                      ),
                      Text(
                        "QR Code",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.attach_money),
                        onPressed: () {
                          // Ação ao clicar no botão
                        },
                      ),
                      Text(
                        "Transferir",
                      ),
                    ],
                  )
                ],
              ),

              // Container para "Meus Cartões"
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartoesScreen()),
                  );
                },
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
                          "Meus Cartões",
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

              // Container para "Guarde seu dinheiro em caixinhas"
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Guarde seu dinheiro em caixinhas",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7801db),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Acessando a área de planejamento",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Divider para separar as seções
              const Divider(thickness: 1, color: Colors.grey),

              // Seção Cartão de Crédito
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Fatura()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Cartão de crédito',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          Icon(Icons.chevron_right, color: Colors.black),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Fatura fechada',
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'R\$ 500,00',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Vencimento: 20/10/2024',
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          // Ação ao clicar no botão Renegociar
                        },
                        child: const Text('Renegociar'),
                      ),
                    ],
                  ),
                ),
              ),

              const Divider(thickness: 1, color: Colors.grey),

              // Seção Empréstimo
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Empréstimo',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Tudo certo com seu empréstimo atual.',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),

              const Divider(thickness: 1, color: Colors.grey),

              // Seção Descubra Mais
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Descubra Mais',
                      style: TextStyle(
                        fontSize: 20, // Tamanho do texto
                        fontWeight: FontWeight.bold, // Peso da fonte
                      ),
                    ),
                    const SizedBox(
                        height: 10), // Espaço entre o título e a imagem

                    // Contêiner com a imagem e os textos dentro do retângulo
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeguroVida()),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[200], // Cor do fundo do retângulo
                          borderRadius:
                              BorderRadius.circular(12), // Bordas arredondadas
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Alinhamento à esquerda
                          children: [
                            // Imagem integrada ao retângulo
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ), // Bordas arredondadas na parte superior
                              child: Image.asset(
                                'imagens/01.png', // Caminho da imagem
                                width: double.infinity,
                                height: 150, // Tamanho da imagem
                                fit: BoxFit
                                    .cover, // A imagem ocupa todo o espaço disponível
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(
                                  16.0), // Espaço interno do retângulo
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // Alinhamento à esquerda
                                children: [
                                  // Texto "Seguro de Vida"
                                  const Text(
                                    'Seguro de Vida',
                                    style: TextStyle(
                                      fontSize: 16, // Tamanho do texto
                                      fontWeight:
                                          FontWeight.bold, // Peso da fonte
                                      color: Colors.black, // Cor do texto
                                    ),
                                  ),
                                  const SizedBox(
                                      height: 5), // Espaço entre os textos

                                  // Texto "Cuide bem do que importa."
                                  const Text(
                                    'Cuide bem do que importa.',
                                    style: TextStyle(
                                      fontSize: 14, // Tamanho do texto
                                      color: Colors.grey, // Cor do texto
                                    ),
                                  ),
                                  const SizedBox(
                                      height:
                                          10), // Espaço entre os textos e o botão

                                  // Botão "Conhecer"
                                  ElevatedButton(
                                    onPressed: () {
                                      // Ação ao clicar no botão "Conhecer"
                                      onTap:
                                      () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SeguroVida()),
                                        );
                                      };
                                    },
                                    child: const Text('Conhecer'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
