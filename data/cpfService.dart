import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class CpfService {
  Future<String> salvarUsuario({required String cpf}) async {
    // Cria o objeto ParseObject para salvar no Back4App
    final usuario = ParseObject('Usuario')..set('cpf', cpf);

    // Salva o objeto no Back4App
    final response = await usuario.save();

    if (!response.success) {
      throw Exception(response.error?.message ?? 'Erro ao salvar o cpf.');
    }

    // Retorna o objectId do usuário criado
    return usuario.objectId!;
  }
}
