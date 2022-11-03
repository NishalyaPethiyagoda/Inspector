import 'package:flutter/material.dart';
import 'package:project/widgets/textfields/text_widgets.dart';
import 'package:project/widgets/textfields/yesNoRemark.dart';
import 'package:project/app_tree/data/SPHM/SPHMdataStorage.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

class SPHM_2_generalOfficeConditions extends StatefulWidget {
  const SPHM_2_generalOfficeConditions({Key? key}) : super(key: key);

  @override
  State<SPHM_2_generalOfficeConditions> createState() =>
      _SPHM_2_generalOfficeConditionsState();
}

class _SPHM_2_generalOfficeConditionsState
    extends State<SPHM_2_generalOfficeConditions> {
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
              '2.General Conditions of the Office',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 9.0,
              ),
              YesNoRemark(
                DataSetName_nd_YesNo:
                    'SPHM_DataSet.cleanlinessSatisfactoryYesNo',
                DataSetName_nd_Remark: 'SPHM_DataSet.cleanlinessSatisfactory',
                Qnumber: 'i. ',
                question: 'cleanliness of the office is satisfactory',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.cleanlinessSatisfactory']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.officeWellOrganizedYesNo',
                DataSetName_nd_Remark: 'SPHM_DataSet.officeWellOrganized',
                Qnumber: 'ii. ',
                question: 'office is well organized',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.officeWellOrganized']).toString(),
              ),
              //MyStatefulWidget(),
              //Button(assignTo: assign_to),

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
              //  SPHMSecureStorage.Gets2();
                Navigator.of(context).pop('SPHM_1');
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
                Navigator.of(context).pushNamed('SPHM_3');
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
