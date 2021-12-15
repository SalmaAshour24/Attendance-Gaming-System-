import 'package:flutter/material.dart';
import '../models/question.dart';
import '../providers/questionProvider.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
      appBar:
          AppBar(titleSpacing: 0.0, toolbarHeight: 200, title: Text("Test")),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer<QuestionProvider>(
              builder: (context, QuestionProvider data, child) {
            return data.getQuestions.length != 0
                ? ListView.builder(
                    itemCount: data.getQuestions.length,
                    itemBuilder: (context, index) {
                      return CardList(data.getQuestions[index], index);
                    },
                  )
                : GestureDetector(
                    onTap: () {
                      showAlertDialog(context);
                    },
                  );
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAlertDialog(context);
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CardList extends StatelessWidget {
  int index;
  Question note;
  CardList(this.note, this.index);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: ListTile(
              trailing: Provider.of<QuestionProvider>(context, listen: false)
                  .removeQuestions(index),
              leading: Icon(Icons.note),
              title: Text("$index"),
              subtitle: Text("Description"),
            )));
  }
}

showAlertDialog(BuildContext context) {
  TextEditingController _Title = TextEditingController();
  // Create button
  Widget okButton = TextButton(
    child: Text("ADD NOTE"),
    onPressed: () {
      Provider.of<QuestionProvider>(context, listen: false)
          .addQuestions(_Title.text);
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("ADD A NEW NOTE "),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _Title,
          decoration: InputDecoration(hintText: "Enter Title"),
        ),
      ],
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
