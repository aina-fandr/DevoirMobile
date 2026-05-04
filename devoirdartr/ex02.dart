String transformerChaine(String entree) {
  // On sépare les chiffres du reste pour pouvoir les inverser
  List<String> chiffres = entree.split('').where((char) => RegExp(r'[0-9]').hasMatch(char)).toList();
  // On inverse la liste des chiffres
  List<String> chiffresInverses = chiffres.reversed.toList();
  
  int indexChiffre = 0;
  StringBuffer resultat = StringBuffer();

  for (int i = 0; i < entree.length; i++) {
    String char = entree[i];

    if (RegExp(r'[a-zA-Z]').hasMatch(char)) {
      // Inversion de la casse (Majuscule <-> Minuscule)
      if (char == char.toUpperCase()) {
        resultat.write(char.toLowerCase());
      } else {
        resultat.write(char.toUpperCase());
      }
    } else if (RegExp(r'[0-9]').hasMatch(char)) {
      // Remplacement par le chiffre inversé
      resultat.write(chiffresInverses[indexChiffre]);
      indexChiffre++;
    } else {
      // Caractères spéciaux : on ne change rien
      resultat.write(char);
    }
  }

  return resultat.toString();
}

void main() {
  String test  = "aB12#zD367775t";
  print("Entrée : $test");
  print("Sortie : ${transformerChaine(test)}"); 
  // Résultat attendu : Ab32#Zd1
}