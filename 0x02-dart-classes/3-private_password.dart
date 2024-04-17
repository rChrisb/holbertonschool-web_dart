class Password {
  String _password;
  Password({required String password}) : _password = password;
  String get password => _password;

  bool isValid() {
    if (this.password.length >= 8 && this.password.length <= 16) {
      if (this.password.contains(RegExp(r'[A-Z]')) &&
          this.password.contains(RegExp(r'[a-z]'))) {
        if (this.password.contains(RegExp(r'[0-9]'))) {
          return true;
        }
      }
    }

    return false;
  }

  @override
  String toString() {
    return 'Your Password is: ${this.password}';
  }
}
