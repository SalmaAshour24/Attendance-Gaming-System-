import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/course_model.dart';

class CourseProviders extends ChangeNotifier {
  //Notes List
  bool _isLoaded = false;
  List<Course> _course = <Course>[];
  List<Course> get getCourse {
    return _course;
  }

  Future<void> getCoursesCollectionFromFirebase() async {
    if (_course.isNotEmpty) return;
    FirebaseFirestore _instance = FirebaseFirestore.instance;

    CollectionReference course = _instance.collection("courses");
    QuerySnapshot querySnapshot = await course.get();
    final allData = List.from(
        querySnapshot.docs.map((doc) => {'data': doc.data(), 'id': doc.id}));
    for (var element in allData) {
      notifyListeners();
      Course course = Course.fromJson(element);
      _course.add(course);
      _isLoaded = true;
    }
  }

  void addCourse(String description, String id, String name) {
    var added_course = FirebaseFirestore.instance.collection('courses').add({
      'description': description,
      'id': id,
      'name': name,
    }).then((value) {
      Course course = new Course(
        id: value.id,
        description: description,
        coursename: name,
      );
      _course.add(course);
      notifyListeners();
    });
  }

  void editCourse(
    int index,
    String id,
    String description,
    String name,
  ) {
    var added_course =
        FirebaseFirestore.instance.collection('courses').doc(id).update({
      'description': description,
      'id': id,
      'name': name,
    }).then((value) {
      Course car = new Course(
        description: description,
        coursename: name,
      );
      _course[index].description = description;
      _course[index].coursename = name;

      notifyListeners();
    });
  }

  void removeCourse(int index) {
    String? id = _course[index].id;
    FirebaseFirestore.instance.collection('courses').doc(id).delete();
    _course.removeAt(index);
    notifyListeners();
  }
}
