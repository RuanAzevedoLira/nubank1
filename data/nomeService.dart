import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class NomeService {
  Future<String> salvarUsuario({required String nome}) async {
    // Cria o objeto ParseObject para salvar no Back4App
    final usuario = ParseObject('Usuario')..set('nome', nome);

    // Salva o objeto no Back4App
    final response = await usuario.save();

    if (!response.success) {
      throw Exception(response.error?.message ?? 'Erro ao salvar o nome.');
    }

    // Retorna o objectId do usuário criado
    return usuario.objectId!;
  }
}
