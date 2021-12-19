import 'package:flutter_application_1/screens/doctor/add_question.dart';
import 'package:flutter_application_1/screens/doctor/edit_questions.dart';
import 'package:flutter_application_1/screens/doctor/students_points.dart';
import 'package:flutter_application_1/screens/doctor/view_answers.dart';
import 'package:flutter_application_1/screens/doctor/view_courseD.dart';
import 'package:flutter_application_1/screens/doctor/edit_profile.dart';
import 'package:flutter_application_1/screens/students/bonus_questions.dart';
import 'package:flutter_application_1/screens/students/edit_profiles.dart';
import 'package:flutter_application_1/screens/students/instructions.dart';
import 'package:flutter_application_1/screens/students/new_points.dart';
import 'package:flutter_application_1/screens/students/question_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import "package:animated_splash_screen/animated_splash_screen.dart";
import 'screens/doctor/add_course.dart';
import 'screens/students/home_page.dart';
import 'screens/home_screen.dart';
import 'screens/signup.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //nshil shartet el debug
      initialRoute: '/',
      routes: {
        '/bonus': (context) => BonusQuestionScreen(),
        '/addC': (context) => AddCourse(),
        '/second': (context) => signup(),
        '/third': (context) => homePage(),
        '/edit': (context) => Editprofile(),
        '/signout': (context) => HomeScreen(),
        '/point': (context) => NewPoints(),
        '/vp': (context) => NewPoints1(),
        '/addQ': (context) => AddQuestions(),
        '/eq': (context) => EditQuestions(),
        '/viewA': (context) => ViewAnswers(),
        '/pointsD': (context) => NewPoints1(),
        '/homeD': (context) => ViewCourseD(),
        '/edits': (context) => Editprofiles(),
        '/question': (context) => QuestionScreen(),
        '/ins': (context) => QuizIns(),
      },

      debugShowCheckedModeBanner: false,
      title: 'AGS',
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: Image.asset(
          "assets/1.PNG",
          fit: BoxFit.fill,
        ),
        nextScreen: HomeScreen(),
        backgroundColor: Color(0xff3D0000),
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.leftToRight,
      ),
    );
  }
}
