import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/widgets/textfields/yesNoRemark.dart';

class SPHM_7_MaintenanceOfMIS extends StatefulWidget {
  const SPHM_7_MaintenanceOfMIS({Key? key}) : super(key: key);

  @override
  State<SPHM_7_MaintenanceOfMIS> createState() =>
      _SPHM_7_MaintenanceOfMISState();
}

class _SPHM_7_MaintenanceOfMISState extends State<SPHM_7_MaintenanceOfMIS> {
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
              '7. Maintenance of MIS',
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
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.s1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.s1',
                Qnumber: 'i. ',
                question:
                    'Has she taken steps to get the relevant returns from the PHM on time \ni.e H 524, H527, H 51200',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.s1']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.s2YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.s2',
                Qnumber: 'ii. ',
                question:
                    'Seperate register is maintained to record the recipt of returns',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.s2']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.s3YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.s3',
                Qnumber: 'iii. ',
                question: 'Has she taken action to ensure the quality of data',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.s3']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.s4YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.s4',
                Qnumber: 'iv. ',
                question:
                    'Has she cross-checked the data with relevant records (diary, daily return and monthly return)',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.s4']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.s5YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.s5',
                Qnumber: 'v. ',
                question: 'Is she able to analyize H 524',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.s5']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.s6YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.s6',
                Qnumber: 'vi. ',
                question:
                    'Is she competent in preparing accurate data in Form - B',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.s6']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.s7YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.s7',
                Qnumber: 'vii. ',
                question: 'Does she prepare the master sheet accurately',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.s7']).toString(),),
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
                Navigator.of(context).pop('SPHM_6');
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
                Navigator.of(context).pushNamed('SPHM_8');
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
