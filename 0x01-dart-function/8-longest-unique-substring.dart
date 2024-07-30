String longestUniqueSubstring(String str) {
  var longest = '';
  var current = '';

  // Boucle sur chaque caractère de la chaîne
  for (var i = 0; i < str.length; i++) {
    var char = str[i];
    var index = current.indexOf(char);

    // Si le caractère n'est pas dans la chaîne actuelle, on l'ajoute
    if (index == -1) {
      current += char;
      // Si la chaîne actuelle est plus longue que la plus longue, on la remplace
      if (current.length > longest.length) {
        longest = current;
      }
      // Sinon, on retire les caractères jusqu'à l'index du caractère
    } else {
      current = current.substring(index + 1) + char;
    }
  }
  return longest;
}