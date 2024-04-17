void outer(String name, String id) {
  String inner() {
    var spliting = name.split(" ");
    var nameAgent = spliting[1].substring(0, 1) + "." + spliting[0];
    return "Hello Agent ${nameAgent} your id is $id";
  }

  print(inner());
}
