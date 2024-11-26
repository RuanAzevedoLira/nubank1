import 'package:flutter/material.dart';
import 'package:nubank/home.dart';

class Fatura extends StatelessWidget {
  const Fatura({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fatura'),
        centerTitle: true,
        backgroundColor: Color(0xb37801db),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xffffffff)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Fatura fechada',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    'R\$ 200,00',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Limite disponível R\$ 0',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Vence em 18 NOV',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 30),
            Divider(color: Colors.grey),
            SizedBox(height: 10),
            SizedBox(
              height: 100, //
              child: ListView(
                itemExtent: 100,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  cIcon('Pagar fatura', Icons.payment),
                  cIcon('Resumo faturas', Icons.list),
                  cIcon('Converter limite', Icons.swap_horiz),
                  cIcon('Meus limites', Icons.settings),
                  cIcon('Meus cartões', Icons.credit_card),
                  cIcon('Indicar amigos', Icons.person_add),
                  cIcon('Pagar boleto', Icons.qr_code_scanner),
                  cIcon('Débito automático', Icons.money_off_rounded)
                ],
              ),
            ),
            Card(
              color: Color(0xffeeeeee),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(Icons.no_adult_content, color: Color(0xff000000)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Você pode ter limite adicional para usar com NuPay',
                        style: TextStyle(color: Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Card(
              color: Color(0xffeeeeee),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(Icons.money, color: Color(0xff000000)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Aumente seu limite enquanto o seu dinheiro rende 100% do CDI',
                        style: TextStyle(color: Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cIcon(String label, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffeeeeee),
          radius: 25,
          child: Icon(icon, color: Color(0xff000000)),
        ),
        SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xff000000), fontSize: 12),
        ),
      ],
    );
  }
}
