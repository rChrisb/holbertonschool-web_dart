import '3-util.dart';
import 'dart:convert';

greetUser() async {
  try {
    return 'Hello ${json.decode(await fetchUserData())['username']}';
  } catch (err) {
    print('error caught: $err');
  }
}

loginUser() async {
  try {
    if (await checkCredentials()) {
      print("There is a user: true");
      return await greetUser();
    } else {
      print("There is a user: false");
      return 'Wrong credentials';
    }
  } catch (err) {
    print('error caught: $err');
  }
}
