void main(){
  String nome = "Laranja";
  double peso = 98;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 30;
  bool isMadura;

  Fruta laranja = Fruta(nome, peso, cor, sabor, diasDesdeColheita);

  print(laranja.nome);
  laranja.estaMadura(40);
}

class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita, {this.isMadura});

  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, "
          "e precisa de $diasParaMadura para poder comer. "
          "Ela está madura? $isMadura");
  }
}

