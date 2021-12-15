import 'package:flutter/foundation.dart';
import 'edit_questions.dart';

class QuestionProvider extends ChangeNotifier {
  List<Question> _question = <Question>[];
  List<Question> get getQuestions {
    return _question;
  }

  void addQuestions(String qu) {
    Question question = new Question(qu);
    _question.add(question);

    notifyListeners();
  }

  removeQuestions(int index) {
    _question.removeAt(index);
    notifyListeners();
  }
}
