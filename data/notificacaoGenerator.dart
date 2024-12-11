import 'package:flutter/material.dart';
import 'package:nubank/data/database.dart';

class Notificacaogenerator extends StatefulWidget {
  final String text;

  const Notificacaogenerator(this.text, {super.key});

  @override
  State<Notificacaogenerator> createState() => _NotificacaogeneratorState();
}

class _NotificacaogeneratorState extends State<Notificacaogenerator> {
  static const Map<int, String> monthsInYear = {
    1: "JAN",
    2: "FEV",
    3: "MAR",
    4: "ABR",
    5: "MAI",
    6: "JUN",
    7: "JUL",
    8: "AGO",
    9: "SET",
    10: "OUT",
    11: "NOV",
    12: "DEZ"
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // initDatabase();
    // return Container();
    if (widget.text.isEmpty) {
      return FutureBuilder(
          future: databaseGetAll(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.payments),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(snapshot.data![index]['transType']),
                            Text(correctDate(
                                snapshot.data![index]['transDate'])),
                          ],
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            snapshot.data![index]['remoteUser'] == null
                                ? Container()
                                : Text(snapshot.data![index]['remoteUser']),
                            Text(snapshot.data![index]['value']),
                          ],
                        ),
                      ),
                      const Divider()
                    ],
                  );
                },
              );
            }
            return Container();
          });
    }
    return Container();
  }

  String correctDate(String date) {
    String day;
    int month;
    List<String> processed = date.split('-');
    day = processed[2].split(" ")[0];
    month = int.parse(processed[1]);
    String myDate = "$day ${monthsInYear[month]}";
    return myDate;
  }
}
