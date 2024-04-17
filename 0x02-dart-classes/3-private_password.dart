// 3-private_password.dart
class Password {
  String _password;

  Password({required String password}) {
    _password = password;
  }

  bool isValid() {
    final RegExp _upperCase = RegExp(r'[A-Z]');
    final RegExp _lowerCase = RegExp(r'[a-z]');
    final RegExp _number = RegExp(r'\d');

    if (_password.length < 8 || _password.length > 16) {
      return false;
    }
    if (!_upperCase.hasMatch(_password)) {
      return false;
    }
    if (!_lowerCase.hasMatch(_password)) {
      return false;
    }
    if (!_number.hasMatch(_password)) {
      return false;
    }
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
