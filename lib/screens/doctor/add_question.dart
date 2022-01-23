import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'drawer.dart';

class AddQuestions extends StatefulWidget {
  const AddQuestions({Key? key}) : super(key: key);

  @override
  _AddQuestionsState createState() => _AddQuestionsState();
}

class _AddQuestionsState extends State<AddQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        backgroundColor: Color(0xff36344b),
      ),
      backgroundColor: Color(0xff36344b),
      body: Container(
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
                              cursorColor: Color(0XFFFFCCFF),
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: null,
                                hintText: '1',
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
                              cursorColor: Color(0XFFFFCCFF),
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: null,
                                hintText: '2',
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
                              cursorColor: Color(0XFFFFCCFF),
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: null,
                                hintText: '3',
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
                      child: ElevatedButton(
                        onPressed: () {
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
