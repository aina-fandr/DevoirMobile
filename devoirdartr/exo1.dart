int? trouverNombreLePlusFrequent(List<int> nombres) {
  if (nombres.isEmpty) return null;

  // Map pour stocker la fréquence de chaque nombre
  Map<int, int> occurrences = {};

  for (var nombre in nombres) {
    occurrences[nombre] = (occurrences[nombre] ?? 0) + 1;
  }

  int? nombreFrequent;
  int maxOccurrences = 0;

  // On parcourt la map pour trouver le nombre avec la plus haute fréquence
  occurrences.forEach((nombre, compte) {
    if (compte > maxOccurrences) {
      maxOccurrences = compte;
      nombreFrequent = nombre;
    }
  });

  return nombreFrequent;
}

void main() {
  List<int> maListe = [1, 3, 2, 3, 4, 1, 3, 5, 2];
  print("Le nombre le plus fréquent est : ${trouverNombreLePlusFrequent(maListe)}");
}