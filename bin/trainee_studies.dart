void main(List<String> arguments){
  String nome = "Laranja";
  double peso = 98;
  int diasDesdeColheita = 30;
  int diasParaMadura = 20;
  bool isMadura = funcIsMadura(diasDesdeColheita);

  toString(nome: nome, peso: peso, diasDesdeColheita: diasDesdeColheita, diasParaMadura: diasParaMadura, isMadura: isMadura);
}

bool funcIsMadura(int dias){
  if (dias >= 30){
    return true;
  } else {
    return false;
  }
}

void toString({required String nome, required double peso, required int diasDesdeColheita, required int diasParaMadura, required bool isMadura}){
  String? madura;
  if(funcIsMadura(diasDesdeColheita)){
    madura = "está madura";
  } else {
    madura = "não está madura";
  }

  print("A $nome pesa $peso gramas! "
        "Ela foi colhida há $diasDesdeColheita dias "
        "e precisa de $diasParaMadura para amadurecer, "
        "logo, a $nome $madura!");
}