void main() {
  int jovens = 2;   
  int adultos = 0;
  int mesAtual = 1;

  print("=== Fase 1: Crescimento natural dos coelhos ===");
  while (mesAtual <= 12) {
    adultos += jovens;
    jovens = adultos;
    int total = jovens + adultos;

    print(
        "Fim do Mês $mesAtual: População de coelhos: $total, Jovens: $jovens, Adultos: $adultos");

    mesAtual++;
  }

  print("\n=== Fase 2: Reprodução + Predador (reduz 75% a cada mês) ===");

  for (int i = 13; i <= 26; i++) {
    adultos += jovens;
    jovens = adultos;
    int total = jovens + adultos;

    total = (total * 0.25).floor();

    // Recalcula jovens e adultos mantendo a proporção 50/50
    jovens = (total ~/ 2);
    adultos = total - jovens;

    print(
        "Fim do Mês $i: População de coelhos: $total, Jovens: $jovens, Adultos: $adultos");
  }
}
