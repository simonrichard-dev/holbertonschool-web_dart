String longestPalindrome(String s) {
  // Fonction pour vérifier si une sous-chaîne est un palindrome
  bool isPalindrome(String str) {
    if (str.length < 3) {
      return false;
    }

    // Inverser la chaîne
    String reversed = str.split('').reversed.join('');

    // Vérifier si la chaîne est égale à la chaîne inversée
    return str == reversed;
  }

  // Si la longueur de la chaîne est inférieure à 3, retourne "none"
  if (s.length < 3) {
    return "none";
  }

  // Initialiser la chaîne la plus longue
  String longest = "none";
  
  // Parcourir toutes les sous-chaînes possibles
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j < s.length; j++) {
      String sub = s.substring(i, j + 1);
      if (isPalindrome(sub)) {
        if (longest == "none" || sub.length > longest.length) {
          longest = sub;
        }
      }
    }
  }
  
  return longest;
}