// Créer une classe Password qui permet de gérer un mot de passe.
class Password {
  String _password = '';

  // Constructeur de la classe Password
  Password({String password = ''}) {
    this._password = password;
  }

  // Getter pour _password
  String get password => _password;

  // Setter pour _password
  set password(String newPassword) {
    _password = newPassword;
  }

  // Méthode pour vérifier si le mot de passe est valide
  bool isValid() {
    return _password.length >= 8 &&
           _password.length <= 16 &&
           _password.contains(RegExp(r'[A-Z]')) &&
           _password.contains(RegExp(r'[a-z]')) &&
           _password.contains(RegExp(r'[0-9]'));
  }

  // Méthode pour afficher le mot de passe sous forme de chaîne de caractères
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}