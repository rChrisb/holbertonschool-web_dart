import '1-util.dart';
import 'dart:convert';

getUserId() async {
  var strRepr = await fetchUserData();

  var Repr  = json.decode(strRepr);

  return Repr["id"];
}
