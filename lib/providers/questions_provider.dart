import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/questions_model.dart';

class QuestionsProviders extends ChangeNotifier {
  //Notes List
  bool _isLoaded = false;
  List<Question> _question = <Question>[];
  List<Question> get getquestion {
    return _question;
  }

  Future<void> getQuestionCollectionFromFirebase() async {
    if (_question.isNotEmpty) return;
    FirebaseFirestore _instance = FirebaseFirestore.instance;

    CollectionReference question = _instance.collection("Question");
    QuerySnapshot querySnapshot = await question.get();
    final allData = List.from(
        querySnapshot.docs.map((doc) => {'data': doc.data(), 'id': doc.id}));
    for (var element in allData) {
      notifyListeners();
      Question question = Question.fromJson(element);
      _question.add(question);
      _isLoaded = true;
    }
  }

  void addQuestion(String question, String id, String trueans, String option1,
      String option2, String option3) {
    var added_question = FirebaseFirestore.instance.collection('Question').add({
      'Question': question,
      'id': id,
      'trueans': trueans,
      'option1': option1,
            'option2': option2,
      'option3': option3,

    }).then((value) {
      Question question = new Question(
        id: value.id,
        //question:question,
        trueans: trueans,
      );
      _question.add(question);
      notifyListeners();
    });
  }

  // void editCourse(
  //   int index,
  //   String id,
  //   String description,
  //   String name,
  // ) {
  //   var added_course =
  //       FirebaseFirestore.instance.collection('courses').doc(id).update({
  //     'description': description,
  //     'id': id,
  //     'name': name,
  //   }).then((value) {
  //     Course car = new Course(
  //       description: description,
  //       coursename: name,
  //     );
  //     _course[index].description = description;
  //     _course[index].coursename = name;

  //     notifyListeners();
  //   });
  // }

  // void removeCourse(int index) {
  //   String? id = _course[index].id;
  //   FirebaseFirestore.instance.collection('courses').doc(id).delete();
  //   _course.removeAt(index);
  //   notifyListeners();
  // }
}
