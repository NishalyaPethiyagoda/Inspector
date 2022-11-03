import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
//import 'package:project/widgets/textfields/noPercentRemark.dart';
//import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
//import 'package:project/widgets/textfields/noRemark.dart';
//import 'package:project/widgets/textfields/text_container.dart';
//import 'package:project/widgets/textfields/vry_long_answers.dart';
//import 'package:project/widgets/textfields/text_widgets.dart';
//import 'package:project/widgets/textfields/satisPercenRemark.dart';
//import 'package:project/widgets/textfields/yesNoRemark.dart';

class SignAndDate extends StatelessWidget {
  //final String question;

  String DataSet_nd_vari;
  //Date today;

  SignAndDate({Key? key, required this.DataSet_nd_vari}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      padding: const EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 2.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: MediaQuery.of(context).size.width,
        minWidth: MediaQuery.of(context).size.width,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(12.0),
            constraints: BoxConstraints(
              maxHeight: double.infinity,
              maxWidth: MediaQuery.of(context).size.width * 0.6,
            ),
            child: TextField(
                maxLines: 5,
                minLines: 2,
                decoration: const InputDecoration(
                  labelText: 'Date:  ',
                  labelStyle: TextStyle(color: Colors.black),
                ),
                onChanged: (value) {
                  SPHM_Data_MAP[DataSet_nd_vari] = value;
                }),
          ),
          Container(
              margin: const EdgeInsets.all(12.0),
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                maxWidth: MediaQuery.of(context).size.width,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.2,
                        maxWidth: MediaQuery.of(context).size.width * 0.25,
                      ),
                      child: Text("Designation:   ")),
                  Container(
                    //color: Colors.amber,
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.3,
                      maxHeight: MediaQuery.of(context).size.height * 0.4,
                      maxWidth: MediaQuery.of(context).size.width * 0.55,
                    ),
                    child: TextField(
                        maxLines: 5,
                        minLines: 2,
                        decoration: const InputDecoration(
                          labelText: '',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        onChanged: (value) {
                          SPHM_Data_MAP[DataSet_nd_vari] = value;
                        }),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
