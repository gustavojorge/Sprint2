void main() {
  Nozes noz = Nozes("Noz", 30, "Marrom", "Neutro", 30, 50);

  noz.fazerMassa();
}

abstract class Bolo {
  void separarIngredientes();

  void fazerMassa();

  void assar();
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este(a) $nome pesa $peso gramas e é $cor");
  }
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  @override
  void assar() {
    print("Colocar no forno");
  }

  @override
  void fazerMassa() {
    print("Misturar a $nome com farinha, açucar, ovos...");
  }

  @override
  void separarIngredientes() {
    print("Catar a $nome");
  }
}

class Nozes extends Fruta {
  double porcentagemOleo;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);


  @override
  void fazerMassa() {
    print("Tirar a casca");
    super.fazerMassa();
  }

}
