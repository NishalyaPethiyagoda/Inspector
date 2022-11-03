import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

//enum selection { noVal, yes, no }

// class Button extends StatefulWidget {
//   String assignTo;

//   Button(
//       {Key? key,
//       //    required this.pressed,
//       required this.assignTo})
//       : super(key: key);

//   @override
//   _ButtonState createState() => _ButtonState();
// }

// class _ButtonState extends State<Button> {
//   bool optionSelectedYes = true;
//   bool optionSelectedNo = true;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         children: [
//           Container(
//             constraints: BoxConstraints(
//               maxHeight: 35,
//               minWidth: MediaQuery.of(context).size.width * 0.18,
//               maxWidth: MediaQuery.of(context).size.width * 0.19,
//             ),
//             child: MaterialButton(
//               color: optionSelectedYes ? Colors.amber : Colors.grey,
//               onPressed: () {
//                 setState(() {
//                   optionSelectedYes = !optionSelectedYes;
//                   optionSelectedNo = false;
//                   widget.assignTo = "yes";
//                 });
//               },
//               child: const Text(
//                 "Yes",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             width: 3,
//           ),
//           Container(
//             constraints: BoxConstraints(
//               maxHeight: 35,
//               minWidth: MediaQuery.of(context).size.width * 0.18,
//               maxWidth: MediaQuery.of(context).size.width * 0.19,
//             ),
//             child: MaterialButton(
//               color: optionSelectedNo ? Colors.amber : Colors.grey,
//               onPressed: () {
//                 setState(() {
//                   optionSelectedNo = !optionSelectedNo;
//                   optionSelectedYes = false;
//                   widget.assignTo = "No";
//                 });
//               },
//               child: const Text(
//                 "No",
//                 style: TextStyle(
//                   fontSize: 16,
//                   //color: optionSelectedNo ? Colors.amber : Colors.grey,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

