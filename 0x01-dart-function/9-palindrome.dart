bool isPalindrome(String s) {
  // Vérifier la longueur de la chaîne
  if (s.length < 3) {
    return false;
  }

  // Inverser la chaîne
  String reversed = s.split('').reversed.join('');

  // Vérifier si la chaîne est égale à la chaîne inversée
  return s == reversed;
}