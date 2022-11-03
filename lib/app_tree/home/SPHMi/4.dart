

import 'package:flutter/material.dart';
import 'package:project/widgets/textfields/yesNoRemark.dart';
import 'package:project/widgets/textfields/yesNoRemark_Satisfac.dart';
import 'package:project/widgets/textfields/text_container.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

class SPHM_4_Mainta_Registers extends StatefulWidget {
  const SPHM_4_Mainta_Registers({Key? key}) : super(key: key);

  @override
  State<SPHM_4_Mainta_Registers> createState() =>
      _SPHM_4_Mainta_RegistersState();
}

class _SPHM_4_Mainta_RegistersState extends State<SPHM_4_Mainta_Registers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        bottom: const PreferredSize(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 5.0, 10.0),
            child: Text(
              '4. Maintenance of Registers,Records and Returns in the office',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19.0,
              ),
            ),
          ),
          preferredSize: Size(0.0, 45.0),
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
              textContainer( "a. List of Duties"),
              const SizedBox(height: 5.0,),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.foA1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foA1',
                  Qnumber: 'i. ',
                  question:
                      'Duty lists of following mentioned officers are available,\n - SPHM\n - PHM',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.foA1']).toString(),
              ),
              const SizedBox(height: 5.0,),
              textContainer( "b. Diary"),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foB1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foB1',
                  Qnumber: 'i. ',
                  question:
                      'Pages are numbered: ',
                  t1: "Satisfactory",
                  t2: "Unsatisfactory",
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foB1']).toString(),
              ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foB2YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foB2',
                  Qnumber: 'ii. ',
                  question:
                      'Completed for the due date: ',
                  t1: "Satisfactory",
                  t2: "Unsatisfactory",
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foB2']).toString(),
              ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foB3YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foB3',
                  Qnumber: 'iii. ',
                  question:
                      'Tallies with the advaced program:',
                  t1: "Satisfactory",
                  t2: "Unsatisfactory",
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foB3']).toString(),
              ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foB4YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foB4',
                  Qnumber: 'iv. ',
                  question:
                      ' number of houses visited and the services provided is mentioned during field visits:',
                  t1: "Satisfactory",
                  t2: "Unsatisfactory",
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foB4']).toString(),
              ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foB5YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foB5',
                  Qnumber: 'v. ',
                  question:
                      'Tallies with RH - MS form B: ',
                  t1: "Satisfactory",
                  t2: "Unsatisfactory",
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foB5']).toString(),
              ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foB6YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foB6',
                  Qnumber: 'vi. ',
                  question:
                      'At the end of the month, diary and supervision reports are forwarded to the MOH through PHNS',
                  t1: "Satisfactory",
                  t2: "Unsatisfactory",
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foB6']).toString(),
              ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foB7YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foB7',
                Qnumber: 'vii. ', question:
                  'If deviated from the advanced programme, whether it is indicated in the deviationbook',
                  t1: "Satisfactory", t2: "Unsatisfactory", 
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foB7']).toString(),
                ),      
              const SizedBox(height: 5.0,),
              textContainer( "c. Registers and records"),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foC1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foC1',
                Qnumber: 'i. ', 
                question:
                  'Seperate files are available for each PHM under care with regard to supervision:',
                  t1: "Satisfactory", 
                  t2: "Unsatisfactory", 
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foC1']).toString(),
                  ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foC2YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foC2',
                Qnumber: 'ii. ', 
                question:
                  'Clinic supervision reports: ',
                  t1: "Satisfactory", 
                  t2: "Unsatisfactory", 
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foC2']).toString(),
                    ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foC3YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foC3',
                Qnumber: 'iii. ', 
                question:
                  'File for Form B: ',
                  t1: "Satisfactory", 
                  t2: "Unsatisfactory", 
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foC3']).toString(),
                   ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foC4YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foC4',
                Qnumber: 'iv. ', 
                question:
                  'Basic information on all PHMs available: ',
                  t1: "Satisfactory", 
                  t2: "Unsatisfactory", 
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foC4']).toString(),
                   ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foC5YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foC5',
                Qnumber: 'v. ', 
                question:
                  'File containing supervision reports given by higher officials: ',
                  t1: "Satisfactory", 
                  t2: "Unsatisfactory", 
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foC5']).toString(),
                ),
              YesNoRemSatisfactory(
                DataSetName_nd_SatisUnsat: 'SPHM_DataSet.foC6YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.foC6',
                Qnumber: 'vi. ', 
                question:
                  "Visitor's book: ",
                  t1: "Satisfactory", 
                  t2: "Unsatisfactory", 
                  hintText: (SPHM_Data_MAP['SPHM_DataSet.foC6']).toString(),
                 ),
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
                Navigator.of(context).pop('SPHM_3');
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
                Navigator.of(context).pushNamed('SPHM_5');
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