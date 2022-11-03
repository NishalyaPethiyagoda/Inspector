import 'package:flutter/material.dart';
import 'package:project/widgets/textfields/noPercentRemark.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/widgets/textfields/noRemark.dart';
import 'package:project/widgets/textfields/text_container.dart';
import 'package:project/widgets/textfields/text_widgets.dart';
import 'package:project/widgets/textfields/satisPercenRemark.dart';
import 'package:project/widgets/textfields/yesNoRemark.dart';

class SPHM_6_supervisionActivity extends StatefulWidget {
  const SPHM_6_supervisionActivity({Key? key}) : super(key: key);

  @override
  State<SPHM_6_supervisionActivity> createState() =>
      _SPHM_6_supervisionActivityState();
}

class _SPHM_6_supervisionActivityState
    extends State<SPHM_6_supervisionActivity> {
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
              '6. Supervision Activities',
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
              NumPercentRemark(
                DataSet_nd_number: "SPHM_DataSet.si1num",
                DataSet_nd_percent: "SPHM_DataSet.si1per",
                DataSet_nd_remark: "SPHM_DataSet.si1remark",
                Qnumber: 'i. ',
                question: 'Number of supervisions planned for the last quarter',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si1remark']).toString(),
              ),
              NumPercentRemark(
                DataSet_nd_number: "SPHM_DataSet.si2num",
                DataSet_nd_percent: "SPHM_DataSet.si2per",
                DataSet_nd_remark: "SPHM_DataSet.si2remark",
                Qnumber: 'ii. ',
                question:
                    'Number of supervisions done according to the Format - B',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si2remark']).toString(),
              ),
              NumPercentRemark(
                DataSet_nd_number: "SPHM_DataSet.si3num",
                DataSet_nd_percent: "SPHM_DataSet.si3per",
                DataSet_nd_remark: "SPHM_DataSet.si3remark",
                Qnumber: 'iii. ',
                question: 'Number of supervisions done in the quarter',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si3remark']).toString(),
              ),
              NumPercentRemark(
                DataSet_nd_number: "SPHM_DataSet.si4num",
                DataSet_nd_percent: "SPHM_DataSet.si4per",
                DataSet_nd_remark: "SPHM_DataSet.si4remark",
                Qnumber: 'iv. ',
                question:
                    'According to diary, Number of supervisions done in last quarter',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si4remark']).toString(),
              ),

              textContainer('6.1 Types of supervision done in last quarter'),
              NumRemark(
                DataSet_nd_number: "SPHM_DataSet.si11num",
                DataSet_nd_remark: "SPHM_DataSet.si11remark",
                Qnumber: 'i. ',
                question: 'PHM Office supervisions',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si11remark']).toString(),
              ),
              NumRemark(
                DataSet_nd_number: "SPHM_DataSet.si12num",
                DataSet_nd_remark: "SPHM_DataSet.si12remark",
                Qnumber: 'ii. ',
                question: 'Field supervisions',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si12remark']).toString(),
              ),
              NumRemark(
                DataSet_nd_number: "SPHM_DataSet.si13num",
                DataSet_nd_remark: "SPHM_DataSet.si13remark",
                Qnumber: 'iii. ',
                question: 'PHM Office and field supervisions',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si13remark']).toString(),
              ),
              NumRemark(
                DataSet_nd_number: "SPHM_DataSet.si14num",
                DataSet_nd_remark: "SPHM_DataSet.si14remark",
                Qnumber: 'iv. ',
                question: 'Supervisions for Weighing posts',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si14remark']).toString(),
              ),
              NumRemark(
                DataSet_nd_number: "SPHM_DataSet.si15num",
                DataSet_nd_remark: "SPHM_DataSet.si15remark",
                Qnumber: 'v. ',
                question: 'Clinic Supervisions',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si15remark']).toString(),
              ),
              textContainer("6.2 Supervision Reports"),
              NumPercentRemark(
                DataSet_nd_number: "SPHM_DataSet.si21num",
                DataSet_nd_percent: "SPHM_DataSet.si21per",
                DataSet_nd_remark: "SPHM_DataSet.si21remark",
                Qnumber: 'i. ',
                question:
                    'Number of supervision reorts made during the last quarter',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si21remark']).toString(),
              ),
              NumPercentRemark(
                DataSet_nd_number: "SPHM_DataSet.si22num",
                DataSet_nd_percent: "SPHM_DataSet.si22per",
                DataSet_nd_remark: "SPHM_DataSet.si22remark",
                Qnumber: 'ii. ',
                question: 'Number of reports forwarded to MOH for approval',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si22remark']).toString(),
              ),
              NumPercentRemark(
                DataSet_nd_number: "SPHM_DataSet.si23num",
                DataSet_nd_percent: "SPHM_DataSet.si23per",
                DataSet_nd_remark: "SPHM_DataSet.si23remark",
                Qnumber: 'iii. ',
                question:
                    'Number of supervision reports submitted to PHM within 2 weeks',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si23remark']).toString(),
              ),
              textContainer(
                  "6.3 Quality of Supervision Reports - See whether the details given below are included in the Supervision report by examining few reports"),
              // ShortText(
              //     qNmber: "",
              //     question: "No. of reports examined: ",
              //     assignTo: si3numReports),
              SatisPercentRemark(
                DataSet_nd_sat: "SPHM_DataSet.si31sat",
                DataSet_nd_per: "SPHM_DataSet.si31per",
                DataSet_nd_remark: "SPHM_DataSet.si31remark",
                Qnumber: 'i. ',
                question: 'Objective of supervision',
                hintTextsatis: (SPHM_Data_MAP['SPHM_DataSet.si31sat']).toString(),
                hintTextrem: (SPHM_Data_MAP['SPHM_DataSet.si31remark']).toString(),
              ),
              SatisPercentRemark(
                DataSet_nd_sat: "SPHM_DataSet.si32sat",
                DataSet_nd_per: "SPHM_DataSet.si32per",
                DataSet_nd_remark: "SPHM_DataSet.si32remark",
                Qnumber: 'ii. ',
                question: 'Justification of the objective',
                hintTextsatis: (SPHM_Data_MAP['SPHM_DataSet.si32sat']).toString(),
                hintTextrem: (SPHM_Data_MAP['SPHM_DataSet.si32remark']).toString(),
              ),
              SatisPercentRemark(
                DataSet_nd_sat: "SPHM_DataSet.si33sat",
                DataSet_nd_per: "SPHM_DataSet.si33per",
                DataSet_nd_remark: "SPHM_DataSet.si33remark",
                Qnumber: 'iii. ',
                question: 'Data comparison',
                hintTextsatis: (SPHM_Data_MAP['SPHM_DataSet.si33sat']).toString(),
                hintTextrem: (SPHM_Data_MAP['SPHM_DataSet.si33remark']).toString(),
              ),
              SatisPercentRemark(
                DataSet_nd_sat: "SPHM_DataSet.si34sat",
                DataSet_nd_per: "SPHM_DataSet.si34per",
                DataSet_nd_remark: "SPHM_DataSet.si34remark",
                Qnumber: 'iv. ',
                question: 'Doing a field supervision as indicated',
                hintTextsatis: (SPHM_Data_MAP['SPHM_DataSet.si34sat']).toString(),
                hintTextrem: (SPHM_Data_MAP['SPHM_DataSet.si34remark']).toString(),
              ),
              SatisPercentRemark(
                DataSet_nd_sat: "SPHM_DataSet.si35sat",
                DataSet_nd_per: "SPHM_DataSet.si35per",
                DataSet_nd_remark: "SPHM_DataSet.si35remark",
                Qnumber: 'v. ',
                question:
                    'Appropriate recommendations are made on supervisions done',
                hintTextsatis: (SPHM_Data_MAP['SPHM_DataSet.si35sat']).toString(),
                hintTextrem: (SPHM_Data_MAP['SPHM_DataSet.si35remark']).toString(),
              ),
              textContainer("6.4 Follow up of the Supervision"),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.si41YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.si41',
                Qnumber: 'i. ',
                question:
                    'Follow up supervision have been done to assess the progrss',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si41']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.si42YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.si42',
                Qnumber: 'ii. ',
                question:
                    'PHMs with low performance have been correctly identified',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si42']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.si43YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.si43',
                Qnumber: 'iii. ',
                question: 'Close attention has been given for those PHMs',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si43']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.si44YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.si44',
                Qnumber: 'iv. ',
                question:
                    'Has she developed a mechanism to identify the best performed officers',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.si44']).toString(),),
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
                Navigator.of(context).pop('SPHM_5');
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
                Navigator.of(context).pushNamed('SPHM_7');
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
