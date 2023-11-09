library medules_test;

import 'package:cloud_firestore/cloud_firestore.dart';
  /// A Calculator.
class CommerceConnection {
  void  test(){
    FirebaseFirestore.instance.collection("quizData").add(({"dd":"6545"}));
  }

  void testBackendConnection() async {
   }
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
