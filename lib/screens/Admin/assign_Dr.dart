// import 'package:flutter/material.dart';
// import 'app_barS.dart';
// import 'package:awesome_dropdown/awesome_dropdown.dart';

// class AssignD extends StatefulWidget {
//   const AssignD({Key? key}) : super(key: key);

//   @override
//   _AssignDState createState() => _AssignDState();
// }

// class _AssignDState extends State<AssignD> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(),
//       appBar: AppBar(
//         title: Apps(),
//         backgroundColor: Color(0xff36344b),
//       ),
//       backgroundColor: Color(0xff36344b),
//       body: Container(
//         decoration: new BoxDecoration(
//           color: Color(0xfff8edee),
//         ),
//         child: Column(
//           children: [
//             Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(2),
//               ),
//               child: const ListTile(
//                 title: Text(
//                   "Assign Dr to course",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontFamily: 'Lora-VariableFont_wght',
//                     fontSize: 23,
//                     color: Color(0xffFFFFFF),
//                   ),
//                 ),
//               ),
//               elevation: 20,
//               color: Color(0xff36344b),
//               margin: EdgeInsets.only(bottom: 30, top: 30, left: 90, right: 90),
//             ),
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: Text(
//                 'Name: ',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontFamily: 'Lora-VariableFont_wght',
//                   fontSize: 25,
//                 ),
//               ),
//             ),
//             AwesomeDropDown(
//               isPanDown: false,
//               dropDownList: ["Dr Essam Eliwa", "Dr khaled", "Dr Ammar"],
//               dropDownIcon: Icon(
//                 Icons.arrow_drop_down,
//                 color: Colors.red,
//                 size: 23,
//               ),
//             ),
//             Column(
//               children: [
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Text(
//                   'Course: ',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontFamily: 'Lora-VariableFont_wght',
//                     fontSize: 25,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 AwesomeDropDown(
//                   isPanDown: false,
//                   dropDownList: [
//                     "Mobile Development",
//                     "Theory",
//                     "Selected Topics"
//                   ],
//                   dropDownIcon: Icon(
//                     Icons.arrow_drop_down,
//                     color: Colors.red,
//                     size: 23,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top:75),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/homeD');
//                     },
//                     style: ElevatedButton.styleFrom(primary: Color(0xff36344b)),
//                     child: Text(
//                       'Add',
//                       style: TextStyle(
//                         color: Color(0xffffffff),
//                         fontSize: 30,
//                         fontFamily: 'Lora-VariableFont_wght',
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
