import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Courses {
  String? name;
  String? description;
  String? CID;

  Courses() {
    setCData();
  }

  setCData() {
    var course = FirebaseAuth.instance.currentUser;
    name = course!.email;
    CollectionReference usersref =
        FirebaseFirestore.instance.collection("courses");
    usersref.get().then((value) {
      value.docs.forEach((element) {
        var el = element.data();
        print(element.data());
        print("================================");
      });
    });
  }

  String? getCName() {
    return name;
  }

  String? getDes() {
    return description;
  }

  String? getCID() {
    return CID;
  }
}
