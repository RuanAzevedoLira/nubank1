import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/data/historicoGenerator.dart';

class Historico extends StatefulWidget {
  const Historico({super.key});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  late TextEditingController control;

  @override
  void initState() {
    super.initState();
    control = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Histórico"),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.compare_arrows_rounded)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.signal_cellular_alt_rounded))
              ],
            )
          ],
        ),
        TextField(
          controller: control,
          style: const TextStyle(
            color: Color(0xff020202),
            fontSize: 20,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xfff1f1f1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            hintText: "Buscar",
            hintStyle: const TextStyle(
                color: Color(0xffb2b2b2),
                fontSize: 20,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
                decorationThickness: 6),
            prefixIcon: IconButton(
                onPressed: () {
                  control.clear();
                },
                icon: Icon(Icons.search)),
            prefixIconColor: Colors.black,
          ),
        ),
        Historicogenerator(control.text)
      ],
    );
  }
}
