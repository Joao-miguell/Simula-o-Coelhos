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

  print("\n=== Fase 2: Introdução do predador (reduz 75% da população) ===");

  int populacao = jovens + adultos;

  for (int i = 1; i <= 7; i++) {
    populacao = (populacao * 0.25).floor();
    print("Após o mês ${12 + i} com predador: População de coelhos: $populacao");
  }
}