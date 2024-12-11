import 'package:flutter/material.dart';
import 'package:nubank/conta/minhaConta.dart';

class Assistente extends StatefulWidget {
  const Assistente({super.key});

  @override
  State<Assistente> createState() => _AssistenteState();
}

class _AssistenteState extends State<Assistente> {
  int selectedMonthIndex = 0; // Índice do mês selecionado
  bool showParaProgram = false;

  final List<String> months = [
    "Janeiro",
    "Fevereiro",
    "Março",
    "Abril",
    "Maio",
    "Junho",
    "Julho",
    "Agosto",
    "Setembro",
    "Outubro",
    "Novembro",
    "Dezembro",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7801db),
        title: const Text(
          "Assistente de pagamentos",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color(0xFFF5F5F5),
          onPressed: () {
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
              // Ação para o ícone de ajuda
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // ListView horizontal dos meses
            SizedBox(
              height: 40, // Altura reduzida
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: months.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedMonthIndex == index;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedMonthIndex =
                              index; // Atualiza o mês selecionado
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isSelected ? Colors.white : const Color(0xff7801db),
                        side: isSelected
                            ? const BorderSide(
                                color: Color(0xff7801db),
                                width: 2.0) // Contorno mais largo
                            : BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(16), // Mais arredondado
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                      ),
                      child: Text(
                        months[index],
                        style: TextStyle(
                          color: isSelected
                              ? const Color(0xff7801db)
                              : Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Saldo disponível: R\$ 0,00",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              "Você pagou todas suas contas previstas de ${months[selectedMonthIndex]}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Total pago: R\$ 1.000,00",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  // Ação do botão
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff7801db),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
                child: const Text(
                  "Adicionar contas +",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ativar fatura automática Nubank",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Pague seu cartão com saldo da conta.",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Icon(Icons.credit_card, color: Colors.purple),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Divider(thickness: 1, color: Colors.grey),
            ListTile(
              title: const Text(
                "Para programa (4)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                showParaProgram ? Icons.expand_less : Icons.expand_more,
              ),
              onTap: () {
                setState(() {
                  showParaProgram = !showParaProgram;
                });
              },
            ),
            if (showParaProgram)
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  ListTile(
                    leading: Icon(Icons.phone, color: Color(0xff7801db)),
                    title: Text("Telefone"),
                    subtitle: Text("Sugestão de déb. automático"),
                  ),
                  ListTile(
                    leading: Icon(Icons.wifi, color: Color(0xff7801db)),
                    title: Text("Internet"),
                    subtitle: Text("Sugestão de déb. automático"),
                  ),
                  ListTile(
                    leading: Icon(Icons.lightbulb, color: Color(0xff7801db)),
                    title: Text("Luz"),
                    subtitle: Text("Sugestão de déb. automático"),
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.local_gas_station, color: Color(0xff7801db)),
                    title: Text("Gás"),
                    subtitle: Text("Sugestão de déb. automático"),
                  ),
                ],
              ),
            const Divider(thickness: 1, color: Colors.grey),
            const ListTile(
              title: Text(
                "Programados",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("\nVocê não tem contas programadas"),
            ),
            const Divider(thickness: 1, color: Colors.grey),
            const ListTile(
              title: Text(
                "Deu certo (10)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.expand_more),
            ),
            const Divider(thickness: 1, color: Colors.grey),
            const ListTile(
              title: Text("Contas pausadas e ocultadas ->"),
            ),
          ],
        ),
      ),
    );
  }
}
