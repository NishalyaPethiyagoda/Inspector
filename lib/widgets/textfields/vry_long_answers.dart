import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/widgets/textfields/text_container.dart';

class VeryLongAnswers extends StatefulWidget {
  final String question;
  String DataSet_nd_vari;
  String hintText;

  VeryLongAnswers({
    Key? key,
    required this.question,
    required this.DataSet_nd_vari,
    required this.hintText,
  }) : super(key: key);

  @override
  State<VeryLongAnswers> createState() => _VeryLongAnswersState();
}

class _VeryLongAnswersState extends State<VeryLongAnswers> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        padding: const EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 2.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        constraints: const BoxConstraints(
          maxHeight: double.infinity,
          //  maxWidth: MediaQuery.of(context).size.width,
        ),
        child: Column(
          children: [
            Text(
              widget.question,
              style: TextStyle(fontSize: 16),
            ),
            TextField(
                maxLength: 39,
                maxLines: 10,
                minLines: 3,
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  labelText: '',
                  labelStyle: TextStyle(color: Colors.black),
                ),
                onChanged: (value) {
                  SPHM_Data_MAP[widget.DataSet_nd_vari] = value;
                }),
          ],
        ));
  }
}
