// ignore: file_names
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';

class Course {
  final String coursename, description;
  // final num age;

  Course(this.coursename, this.description);
}

class App extends StatelessWidget {
  static List<Course> courses = [
    Course('Theory of computaion', 'theory'),
    Course('Mobile development', 'flutter'),
    Course('Data eng', 'network'),
    Course('graduation', 'E tongue'),
    Course('selected topics', 'machine learning'),
  ];
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // this will hide Drawer hamburger icon

      backgroundColor: Color(0xff36344b),

      title: Padding(
        padding: const EdgeInsets.only(left: 270, bottom: 20),
        child: IconButton(
          icon: Icon(Icons.search),
          tooltip: 'Search your Course',
          onPressed: () => showSearch(
            context: context,
            delegate: SearchPage<Course>(
              onQueryUpdate: (s) => print(s),
              items: courses,
              searchLabel: 'Search  Courses',
              searchStyle: TextStyle(color: Color(0xff36344b)),
              barTheme: ThemeData.dark(),
              suggestion: Center(
                child: Text('search ..'),
              ),
              failure: Center(
                child: Text(
                  'No course found :(',
                  style: TextStyle(color: Color(0xffffffff)),
                ),
              ),
              filter: (Course) => [
                Course.coursename,
                Course.description,
              ],
              builder: (Course) => ListTile(
                title: Text(
                  Course.coursename,
                  style: TextStyle(color: Color(0xffffffff)),
                ),
                subtitle: Text(
                  Course.description,
                  style: TextStyle(color: Color(0xffffffff)),
                ),
                //trailing: Text('${person.age} yo'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//ListView.builder(
  //      itemCount: people.length,
    //    itemBuilder: (context, index) {
      //    final Person person = people[index];
        //  return ListTile(
          //  title: Text(person.name),
           // subtitle: Text(person.surname),
            //trailing: Text('${person.age} yo'),
        //  );
      //  },
      //),
