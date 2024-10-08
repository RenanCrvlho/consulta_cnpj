import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_app/empresas/empresa_consulta.dart';

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  Future<Empresa> fetchEmpresa(String cnpj) async {
    final resposta = await http.get(Uri.parse('$baseUrl/$cnpj'));

    if (resposta.statusCode == 200) {
      final data = json.decode(resposta.body);
      if (data['status'] == 'ERROR') {
        throw Exception('Erro ao buscar empresa: ${data['message']}');
      }
      return Empresa.fromJson(data);
    } else {
      throw Exception('CNPJ não encontrado!');
    }
  }
}
