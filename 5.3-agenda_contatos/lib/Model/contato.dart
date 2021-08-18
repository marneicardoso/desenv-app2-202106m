class Contato {
  // Atributos
  int id;
  String nome;
  String sobrenome;
  String email;
  String fone;
  String foto;

// Construtor da classe
  Contato({
    required this.id, // required == obrigatório
    required this.nome,
    required this.sobrenome,
    required this.email,
    required this.fone,
    required this.foto
  });
}

// Nome de classe: Inicia com Letra Maiúscula
// CamelCase
// NomeDaClasse