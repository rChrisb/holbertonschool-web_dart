String inner() {
  return "Welcome to the program!";
}

void outer(String name, String id) {
  List<String> nameParts = name.split(' ');
  String firstName = nameParts[0];
  String lastName = nameParts[1];
  print('Hello $firstName $lastName, your ID is $id');
  print(inner());
}
