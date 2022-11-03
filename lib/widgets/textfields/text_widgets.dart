import 'package:flutter/material.dart';
import 'package:project/app_data/scale_ratio.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
//import 'package:project/widgets/checkBox.dart';

Screen window = new Screen();

Widget ShortText(

  BuildContext ctx,
  String DataSetName,
  String qNmber,
  String question,
  String data1,
  String hintText,
) {
  return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: MediaQuery.of(ctx).size.width,
      ),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            qNmber,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Container(
            //padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
            constraints: BoxConstraints(
              maxHeight: double.infinity,
              minWidth: MediaQuery.of(ctx).size.width * 0.44,
              maxWidth: MediaQuery.of(ctx).size.width * 0.45,
            ),
            child: Text(
              question,
              softWrap: true,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            width: 9.0,
          ),
          Container(
            constraints: BoxConstraints(
              maxHeight: double.infinity,
              maxWidth: MediaQuery.of(ctx).size.width * 0.38,
            ),
            child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: null,
                  hintText: hintText,
                  //border: OutlineInputBorder(borderSide: BorderSide.none)
                  labelStyle: TextStyle(color: Colors.black),
                ),
                onChanged: (value) {
                  String match_vari = '$DataSetName.$data1';
                  SPHM_Data_MAP[match_vari] = value;
                }),
          ),
        ],
      ));
}

Widget LongAnswer1(BuildContext ctx, String DataSetName, String question,
    String data1, String hintText) {
  //
  return Container(
    padding: const EdgeInsets.fromLTRB(0, 2.0, 0, 2),
    child: TextField(
        maxLines: 7,
        minLines: 1,
        decoration: InputDecoration(
          //fillColor: Colors.amber,
          labelText: question,
          hintText: hintText,
          labelStyle: TextStyle(
            color: Colors.black,
          ),
        ),
        onChanged: (value) {
          String match_vari = '$DataSetName.$data1';
          SPHM_Data_MAP[match_vari] = value;
        }),
  );
}

Widget longQuestions(
  BuildContext ctx,
  String DataSetName,
  String data1,
  final String qnumber,
  final String question,
  String hintText,
) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
    constraints: BoxConstraints(
      maxHeight: double.infinity,
      maxWidth: MediaQuery.of(ctx).size.width,
    ),
    padding: const EdgeInsets.fromLTRB(6, 6, 4, 6),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(5))),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                qnumber,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Container(
              //color: Colors.amber,
              constraints: BoxConstraints(
                maxHeight: double.infinity,
                maxWidth: MediaQuery.of(ctx).size.width * 0.785,
              ),
              child: Text(
                question,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
        TextField(
            maxLines: 7,
            minLines: 1,
            decoration: InputDecoration(
              //fillColor: Colors.amber,
              labelText: '',
              hintText: hintText,
              labelStyle: TextStyle(
                color: Colors.black,
              ),
            ),
            onChanged: (value) {
              String search_and_assign = '$DataSetName.$data1';
              SPHM_Data_MAP[search_and_assign] = value;
            }),
      ],
    ),
  );
}
