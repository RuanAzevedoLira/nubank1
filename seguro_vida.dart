import 'dart:js';

import 'package:flutter/material.dart';
import 'package:nubank/home.dart';

class SeguroVida extends StatelessWidget {
  const SeguroVida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 16.0, right: 16.0), // Espaço na lateral esquerda
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _close(context),
                _SeguroVida(),
                _Ajuda(),
              ],
            ),
            const SizedBox(height: 15),
            Image.asset(
              "imagens/personagemSeguro.jpeg",
              fit: BoxFit.cover,
              width: 150,
            ),
            const SizedBox(height: 15),
            _Texto(),
            const SizedBox(height: 15),
            _Textos2(),
            const SizedBox(height: 90),
            Align(
              alignment: Alignment.bottomCenter,
              child: _botao(),
            ),
          ],
        ),
      ),
    );
  }

  _close(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Home()));
              },
              icon: Icon(
                Icons.close,
                color: Colors.black,
              )),
        ));
  }

  _SeguroVida() {
    return Container(
      child: const Text(
        'Seguro Vida',
        style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none),
      ),
    );
  }

  _Ajuda() {
    return GestureDetector(
        onTap: () {},
        child: Container(
          color: Colors.transparent,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help,
                color: Colors.black,
              )),
        ));
  }

  _Texto() {
    return Container(
        child: RichText(
            text: TextSpan(children: [
      TextSpan(
        text: "Toda proteção financeira que você precisa a partir de ",
        style: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      TextSpan(
          text: "R\$4,00/ mês",
          style: TextStyle(
              color: const Color(0xff7801db),
              fontSize: 25,
              fontWeight: FontWeight.bold))
    ])));
  }

  _Textos2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Icon(
            Icons.payment,
            color: const Color(0xff7801db),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Deixe até R\$150.000 para quem você ama',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
        ]),
        const SizedBox(height: 12),
        Row(children: [
          Icon(
            Icons.favorite_border,
            color: const Color(0xff7801db),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Proteção para te ajudar com acidentes',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
        ]),
        const SizedBox(height: 12),
        Row(children: [
          Icon(
            Icons.headset_mic,
            color: const Color(0xff7801db),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Um time 100% dedicado a te dar suporte',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
        ]),
        const SizedBox(height: 12),
        Row(children: [
          Icon(
            Icons.query_builder,
            color: const Color(0xff7801db),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            '97% dos casos são pagos em até 2 dias',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
        ]),
      ],
    );
  }

  _botao() {
    return Container(
        child: GestureDetector(
      onTap: () {},
      child: Container(
        //container para criar o botão
        margin:
            const EdgeInsets.symmetric(horizontal: 25), // Margem nas laterais
        padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 50.0), // Aumenta a área do botão sem afetar o texto
        decoration: BoxDecoration(
          color: const Color(0xff7801db),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          "Fazer Simulação",
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              decoration: TextDecoration.none),
        ),
      ),
    ));
  }
}
