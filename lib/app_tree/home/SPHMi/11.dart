import 'package:flutter/material.dart';
//import 'package:project/widgets/textfields/noPercentRemark.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
//import 'package:project/widgets/textfields/noRemark.dart';
import 'package:project/widgets/textfields/text_container.dart';

import 'package:project/widgets/textfields/vry_long_answers.dart';
//import 'package:project/widgets/textfields/text_widgets.dart';
//import 'package:project/widgets/textfields/satisPercenRemark.dart';
//import 'package:project/widgets/textfields/yesNoRemark.dart';

class SPHM_11_DevelopPlan extends StatefulWidget {
  const SPHM_11_DevelopPlan({Key? key}) : super(key: key);

  @override
  State<SPHM_11_DevelopPlan> createState() => _SPHM_11_DevelopPlanState();
}

class _SPHM_11_DevelopPlanState extends State<SPHM_11_DevelopPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        bottom: const PreferredSize(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
            child: Text(
              '11. Develop Action Plan',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19.0,
              ),
            ),
          ),
          preferredSize: Size(0.0, 20.0),
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Clear Fields",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 12.0, 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            VeryLongAnswers(
              question: "Problems Identified",
              DataSet_nd_vari: 'SPHM_DataSet.el1',
              hintText: (SPHM_Data_MAP['SPHM_DataSet.el1']).toString(),
            ),
            VeryLongAnswers(
              question: "Underlying reasons",
              DataSet_nd_vari: "SPHM_DataSet.el2",
              hintText: (SPHM_Data_MAP['SPHM_DataSet.el2']).toString(),
            ),
            VeryLongAnswers(
              question: "Proposed Solutions",
              DataSet_nd_vari: "SPHM_DataSet.el3",
              hintText: (SPHM_Data_MAP['SPHM_DataSet.el3']).toString(),
            ),
            VeryLongAnswers(
              question: "Proposed Activiy",
              DataSet_nd_vari: "SPHM_DataSet.el4",
              hintText: (SPHM_Data_MAP['SPHM_DataSet.el4']).toString(),
            ),
            VeryLongAnswers(
              question: "Resposibility",
              DataSet_nd_vari: "SPHM_DataSet.el5",
              hintText: (SPHM_Data_MAP['SPHM_DataSet.el5']).toString(),
            ),
            VeryLongAnswers(
              question: "Time Frame",
              DataSet_nd_vari: "SPHM_DataSet.el6",
              hintText: (SPHM_Data_MAP['SPHM_DataSet.el6']).toString(),
            ),
            SizedBox(
              height: 55.0,
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 35,
            bottom: 0,
            child: FloatingActionButton(
              heroTag: 'back',
              onPressed: () {
                Navigator.of(context).pop('SPHM_10');
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.navigate_before, size: 30),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 5,
            child: FloatingActionButton(
              heroTag: 'next',
              onPressed: () {
                Navigator.of(context).pushNamed('SPHM_12');

                //
                //print(vari);
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.navigate_next, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
