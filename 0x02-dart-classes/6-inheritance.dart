// 6-inheritance.dart
import '6-password.dart';

class User {
  int id;
  String name;
  int age;
  double height;
  Password? user_password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    this.user_password,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${user_password?.isValid()})';
  }
}