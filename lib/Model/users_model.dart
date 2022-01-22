import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Users {
  String? firstname;
  String? lastname;
  String? email;
  String? password;
  String? UID;
  String? UT;

Users() 
{
  setData();
}

  setData() {
    User? user = FirebaseAuth.instance.currentUser;
    email = user!.email;
    DocumentReference ref = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid);
    
    FirebaseFirestore.instance.runTransaction((transaction) async{
      DocumentSnapshot snapShot = await transaction.get(ref);
      print(snapShot.get('usertype'));
      if(snapShot.exists)
{
firstname=snapShot.get('firstname');
lastname=snapShot.get('lastname');
UT=snapShot.get('usertype').toString();
}
      

    });
  }

  String? getFName() {
    return firstname;
  }

  String? getLName() {
    return lastname;
  }

  String? getEmail() {
    return email;
  }

  String? getPassword() {
    return password;
  }

  String? getUID() {
    return UID;
  }

  String? getUT() {
    return UT;
  }
}
