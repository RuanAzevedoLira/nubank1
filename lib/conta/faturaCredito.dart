import 'package:flutter/material.dart';

class Fatura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fatura'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
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
                  color: Colors.white,
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
                      color: Colors.white,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text('Pagar'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text('Parcelar'),
                ),
              ],
            ),
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
                  cIcon('Resumo de faturas', Icons.list),
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
              color: Colors.grey[900],
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(Icons.no_adult_content , color: Colors.white),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Você pode ter limite adicional para usar com NuPay',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
            SizedBox(height: 15),

            Card(
              color: Colors.grey[900],
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(Icons.money, color: Colors.white),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Aumente seu limite enquanto o seu dinheiro rende 100% do CDI',
                        style: TextStyle(color: Colors.white),
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
          backgroundColor: Colors.grey[800],
          radius: 25,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
