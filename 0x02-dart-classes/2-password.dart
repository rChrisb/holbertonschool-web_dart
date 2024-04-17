// 2-password.dart
class Password {
  String password;

  Password() {
    password = '';
  }

  bool isValid() {
    final RegExp _upperCase = RegExp(r'[A-Z]');
    final RegExp _lowerCase = RegExp(r'[a-z]');
    final RegExp _number = RegExp(r'\d');

    if (password.length < 8 || password.length > 16) {
      return false;
    }
    if (!_upperCase.hasMatch(password)) {
      return false;
    }
    if (!_lowerCase.hasMatch(password)) {
      return false;
    }
    if (!_number.hasMatch(password)) {
      return false;
    }
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
