import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'app_bar.dart';
import 'drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class AddQuestions extends StatefulWidget {
  const AddQuestions({Key? key}) : super(key: key);

  @override
  _AddQuestionsState createState() => _AddQuestionsState();
}

class _AddQuestionsState extends State<AddQuestions> {
  @override
   void initState() {
    // addData();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        title: App(),
        backgroundColor: Color(0xff36344b),
      ),
      backgroundColor: Color(0xff36344b),
      body: const MyCustomForm(),
      
     
    );
  }
}
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({ Key? key }) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
   late var question, trueans, option1, option2, option3;

  final _formKey = GlobalKey<FormState>();


  getData() async {
    var formdata = _formKey.currentState;
    if (formdata!.validate()) {
      print('valid');
      formdata.save();
      try {
        CollectionReference usersref =
            FirebaseFirestore.instance.collection("Question");
        usersref.add({"Question": question, "trueans": trueans,"option1":option1,
          "option2": option2
        ,
          "option3": option3
      });
      } catch (e) {
        print(e);
      }
    } else {
      print('not valid');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:   Container(
        decoration: new BoxDecoration(
                          color: Color(0xfff8edee),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: const ListTile(
                    title: Text(
                      "Add Question",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                                  fontFamily: 'Lora-VariableFont_wght',
                        fontSize: 20,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  elevation: 20,
                  color: Color(0xff36344b),
                  margin:
                      EdgeInsets.only(bottom: 30, top: 30, left: 90, right: 90),
                ),
                Column(
                  children: [
                    Text(
                      'Question',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                                  fontFamily: 'Lora-VariableFont_wght',
                        fontSize: 30,
                        color: Color(0xff36344b),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                     
                        child: TextFormField(
                           onSaved: (val) {
                            question = val;
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add question",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff6c6996), width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Choices:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                                  fontFamily: 'Lora-VariableFont_wght',
                        fontSize: 35,
                        color: Color(0xff36344b),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        
                        child: TextFormField(
                           onSaved: (val) {
                                trueans = val;
                              },
                              cursorColor: Color(0XFFFFCCFF),
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: null,
                                hintText: 'True',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff6c6996), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ))
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                      
                        child: TextFormField(
                           onSaved: (val) {
                                option1 = val;
                              },
                              cursorColor: Color(0XFFFFCCFF),
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: null,
                                hintText: 'option1',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff6c6996), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ))
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                       
                        child: TextFormField(
                           onSaved: (val) {
                                option2 = val;
                              },
                              cursorColor: Color(0XFFFFCCFF),
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: null,
                                hintText: 'optoin2',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff6c6996), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ))
                      ),
                    ),
                            Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                          child: TextFormField(
                              onSaved: (val) {
                                option3 = val;
                              },
                              cursorColor: Color(0XFFFFCCFF),
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: null,
                                hintText: 'optoin3',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff6c6996), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ))),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: ElevatedButton(
                        onPressed: ()  async{
                                                    await getData();

                          Navigator.pushNamed(context, '/homeD');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff36344b)),
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 30,
                                  fontFamily: 'Lora-VariableFont_wght',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
