void main(){
  String nome = "Banana";
  double peso = 75;
  String cor = "Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 30;
  bool isMadura;

  Fruta macadamia = Fruta("Macadâmia", 2, "Branco Amarelado", sabor, diasDesdeColheita);
  Fruta banana = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta limao = Fruta("Limão", 100, "Verde", sabor, diasDesdeColheita);
  Legume macaxeira = Legume("Macaxeira", 1200, "Marrom", true);


  macadamia.printAlimento();
  banana.printAlimento();
  macaxeira.printAlimento();
  limao.printAlimento();
  macaxeira.cozinhar();
  limao.fazerSuco();

}

class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento(){
    print("Este(a) $nome pesa $peso gramas e é $cor");
  }
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}): super(nome, peso, cor);

  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, "
        "e precisa de $diasParaMadura para poder comer. "
        "Ela está madura? $isMadura");
  }

  void fazerSuco(){
    print("Você fez um ótimo suco de $nome");
  }
}

class Legume extends Alimento{
  bool isPrecisaCozinhar;

  Legume(String nome, double peso, String cor, this.isPrecisaCozinhar) : super(nome, peso, cor);

  void cozinhar(){
    if(isPrecisaCozinhar){
      print("Portanto, $nome está cozinhando!");
    } else {
      print("Nem precisa cozinhar");
    }
  }
}

