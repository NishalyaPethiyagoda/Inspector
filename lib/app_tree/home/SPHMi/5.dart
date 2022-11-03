
import 'package:flutter/material.dart';
import 'package:project/widgets/textfields/yesNoRemark.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

class SPHM_5_actionPlan extends StatefulWidget {
  const SPHM_5_actionPlan({Key? key}) : super(key: key);

  @override
  State<SPHM_5_actionPlan> createState() => _SPHM_5_actionPlanState();
}

class _SPHM_5_actionPlanState extends State<SPHM_5_actionPlan> {
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
              '5. Action Plan of SPHM',
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
          padding: EdgeInsets.fromLTRB(15.0, 0.0, 12.0, 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 9.0,
              ),
              const SizedBox(
                height: 5.0,
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.f1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.f1',
                  Qnumber: 'i. ',
                  question:
                      'Has she identified problems in the PHM areas under her purview and directed them to overcome problems through preparation of action plan',
                
                hintText: (SPHM_Data_MAP['SPHM_DataSet.f1']).toString(),
                ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.f2YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.f2',
                  Qnumber: 'ii. ',
                  question: 'Has she identifed targets for the year',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.f2']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.f3YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.f3',
                  Qnumber: 'iii. ',
                  question: 'Has she made an annual plan to achieve the goals',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.f3']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.f4YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.f4',
                  Qnumber: 'iv. ',
                  question:
                      'Has she made objectives to achieve targets',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.f4']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.f5YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.f5',
                  Qnumber: 'v. ',
                  question:
                      'Has she prepared an action plan to overcome identifed problems in the area',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.f5']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.f6YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.f6',
                  Qnumber: 'vi. ',
                  question:
                      'Has MOH/PHNS been made aware regarding the action plan',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.f6']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.f7YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.f7',
                  Qnumber: 'vii. ',
                  question:
                      'Has she directed the PHNS to implement the action plan',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.f7']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.f8YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.f8',
                  Qnumber: 'viii. ',
                  question:
                      'Has she accessed the progress by monitoring each quarter',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.f8']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.f9YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.f9',
                  Qnumber: 'xi. ',
                  question:
                      'Has she discussed it at monthly & local conferences',
                 hintText: (SPHM_Data_MAP['SPHM_DataSet.f9']).toString(),),
              const SizedBox(
                height: 57.0,
              ),
            ],
          )),
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 35,
            bottom: 0,
            child: FloatingActionButton(
              heroTag: 'back',
              onPressed: () {
                Navigator.of(context).pop('SPHM_4');
              },
              backgroundColor: Colors.green,
              child: const Icon(
                Icons.navigate_before,
                size: 30
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 5,
            child: FloatingActionButton(
              heroTag: 'next',
              onPressed: () {
                Navigator.of(context).pushNamed('SPHM_6');
              },
              backgroundColor: Colors.green,
              child: const Icon(
                Icons.navigate_next,
                size: 30
              ),
            ),
          ),
        ],
      ),
    );
  }
}
