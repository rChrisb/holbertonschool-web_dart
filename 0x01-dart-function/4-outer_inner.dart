String inner() {
  return "Welcome to the program, Agent";
}

void outer(String name, String id) {
  List<String> nameParts = name.split(' ');
  String lastName = nameParts[0];
  String firstName = nameParts[1][0] + '.';
  print('Hello Agent $firstName$lastName, your ID is $id');
  print(inner());
}

