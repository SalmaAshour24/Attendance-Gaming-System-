

class Question {
    String? id;

  final String? question;
  final String? trueans;
  final String? option1;
  final String? option2;
  final String? option3;


  Question({this.id, this.question, this.trueans, this.option1, this.option2,this.option3});
  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
        id: json['id'],
        question: json['data']['question'],
        trueans: json['data']['trueans'],
                option1: json['data']['option1'],
                option2: json['data']['option2'],
                option3: json['data']['option3']);

  }
}





// const List Questions  = [
//   {
   
//     "question":
//         "Flutter is an open-source UI software development kit created by ______",
//     "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
//     "answer_index": 1,
//   },
//   {
   
//     "question": "When google release Flutter.",
//     "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
//     "answer_index": 2,
//   },
//   {
    
//     "question": "A memory location that holds a single letter or number.",
//     "options": ['Double', 'Int', 'Char', 'Word'],
//     "answer_index": 2,
//   },
//   {
   
//     "question": "What command do you use to output data to the screen?",
//     "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
//     "answer_index": 2,
//   },
// ];