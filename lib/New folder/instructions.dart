import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/students/app_barS.dart';
import 'app_barS.dart';
import 'drawerS.dart';
import 'package:flutter_sliding_up_panel/flutter_sliding_up_panel.dart';

class QuizIns extends StatefulWidget {
  const QuizIns({Key? key}) : super(key: key);

  @override
  _QuizInsState createState() => _QuizInsState();
}

class _QuizInsState extends State<QuizIns> {
  late ScrollController scrollController;

  SlidingUpPanelController panelController = SlidingUpPanelController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        drawer: Drawer1s(),
        appBar: AppBar(
          title: Apps(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Color(0xff6E85B2),
                ))
          ],
          backgroundColor: Color(0xff581313),
        ),
        backgroundColor: Color(0xffFFB703),
        body: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage('assets/4.PNG'), fit: BoxFit.cover)),
            child: ListView(
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/question');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff523232),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Text(
                        'Attempt Quiz',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Text(
                      "Please See the instructions bellow",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mouse Memoirs',
                        fontSize: 35,
                        color: Color(0xff581313),
                      ),
                    ),
                    SlidingUpPanelWidget(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shadows: [
                            BoxShadow(
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                                color: const Color(0x11000000))
                          ],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              color: Colors.black,
                              alignment: Alignment.center,
                              height: 50.0,
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.menu,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.0,
                                    ),
                                  ),
                                  Text(
                                    'click or drag',
                                  )
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            ),
                            Divider(
                              height: 0.5,
                              color: Colors.grey[300],
                            ),
                            Flexible(
                              child: Container(
                                child: ListView.separated(
                                  controller: scrollController,
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text('list item $index'),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 0.5,
                                    );
                                  },
                                  shrinkWrap: true,
                                  itemCount: 20,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ],
                          mainAxisSize: MainAxisSize.min,
                        ),
                      ),
                      controlHeight: 50.0,
                      anchor: 0.4,
                      panelController: panelController,
                      onTap: () {
                        ///Customize the processing logic
                        if (SlidingUpPanelStatus.expanded ==
                            panelController.status) {
                          panelController.collapse();
                        } else {
                          panelController.expand();
                        }
                      }, //Pass a onTap callback to customize the processing logic when user click control bar.
                      enableOnTap:
                          true, //Enable the onTap callback for control bar.
                      dragDown: (details) {
                        print('dragDown');
                      },
                      dragStart: (details) {
                        print('dragStart');
                      },
                      dragCancel: () {
                        print('dragCancel');
                      },
                      dragUpdate: (details) {
                        print(
                            'dragUpdate,${panelController.status == SlidingUpPanelStatus.dragging ? 'dragging' : ''}');
                      },
                      dragEnd: (details) {
                        print('dragEnd');
                      },
                    ),
                  ],
                ),
              ],
            )),
      )
    ]);
  }
}
