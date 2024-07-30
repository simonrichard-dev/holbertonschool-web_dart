import '6-password.dart';

// Création de la classe User qui hérite de la classe Password
class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String _userPassword;

  // Constructeur de la classe User
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : _userPassword = user_password, super(password: user_password);

  // Méthode pour convertir l'objet User en JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Méthode statique pour créer un objet User à partir d'un JSON
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  // Getter pour user_password pour assurer la validation
  String get user_password => _userPassword;

  // Setter pour user_password pour assurer la validation après mise à jour
  set user_password(String newPassword) {
    _userPassword = newPassword;
    super.password = newPassword;
  }

  // Méthode pour afficher l'objet User sous forme de chaîne de caractères
  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}