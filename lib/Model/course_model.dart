class Course {
   String? coursename;
  String? description;
  String? id;
  // final num age;

  Course({this.id, this.coursename, this.description});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
        id: json['id'],
        coursename: json['data']['name'],
        description: json['data']['description']);
  }
}

// List<Course> courses = [
//   Course('Theory of computaion', 'theory'),
//   Course('Mobile development', 'flutter'),
//   Course('Data eng', 'network'),
//   Course('graduation', 'E tongue'),
//   Course('selected topics', 'machine learning'),
// ];
