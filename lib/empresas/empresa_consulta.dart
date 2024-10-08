class Empresa {
  final String cnpj;
  final String matriz;
  final String razaoSocial;
  final String nomeFantasia;
  final String situacao;
  final String atividade;
  final String endereco;
  final String bairro;
  final String uf;
  final String cep;
  final String telefone;

  Empresa({
    required this.cnpj,
    required this.matriz,
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.situacao,
    required this.atividade,
    required this.endereco,
    required this.bairro,
    required this.uf,
    required this.cep,
    required this.telefone,
  });

  factory Empresa.fromJson(Map<String, dynamic> json) {
    return Empresa(
      cnpj: json['cnpj'] ?? '',
      matriz: json['descricao_matriz_filial'] ?? '',
      razaoSocial: json['razao_social'] ?? '',
      nomeFantasia: json['nome_fantasia'] ?? '',
      situacao: json['descricao_situacao_cadastral'] ?? '',
      atividade: json['cnae_fiscal_descricao'] ?? '',
      endereco: json['logradouro'] ?? '',
      bairro: json['bairro'] ?? '',
      uf: json['uf'] ?? '',
      cep: json['cep'] ?? '',
      telefone: json['ddd_telefone_1'] ?? '',
    );
  }
}
