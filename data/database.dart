import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<List<Map<String, dynamic>>> databaseGetAll() async {
  late List<Map<String, dynamic>> result = [];
  QueryBuilder<ParseObject> queryUsers =
      QueryBuilder<ParseObject>(ParseObject('Notificacao'))
        ..orderByDescending("transDate");

  final ParseResponse parseResponse = await queryUsers.query();

  if (parseResponse.success && parseResponse.results != null) {
    final object = parseResponse.results!;

    for (var element in object) {
      result.add({
        'transType': element.get<String>('transType'),
        'value': element.get<double>('value').toString(),
        'transDate': element.get<DateTime>('transDate').toString(),
        'remoteUser': element.get<String>('remoteUser')
      });
    }
  }
  return result;
}
