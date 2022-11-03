import 'package:flutter/material.dart';
import 'package:project/widgets/textfields/yesNoRemark.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

class SPHM_3_Maintanence_WallPaper extends StatefulWidget {
  const SPHM_3_Maintanence_WallPaper({Key? key}) : super(key: key);

  @override
  State<SPHM_3_Maintanence_WallPaper> createState() =>
      _SPHM_3_Maintanence_WallPaperState();
}

class _SPHM_3_Maintanence_WallPaperState
    extends State<SPHM_3_Maintanence_WallPaper> {
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
              '3. Maintenance of the Wall paper',
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
              ///////////////////////////////////////// assign variables to save data////////////////
              const SizedBox(
                height: 9.0,
              ),
              Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    'a. Map',
                    style: TextStyle(fontSize: 16),
                  )),
              const SizedBox(
                height: 5.0,
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threA1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threA1',
                Qnumber: 'i. ',
                question: 'The approved map of the MOH area is displayed',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threA1']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threA2YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threA2',
                Qnumber: 'ii. ',
                question: 'Demarcations of the PHM areas are marked',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threA2']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threA3YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threA3',
                Qnumber: 'iii. ',
                question: 'Offices and clinics are marked in each PHM area',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threA3']).toString(),
              ),
              //
              const SizedBox(
                height: 5.0,
              ),
              Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    'b. Vital Statistics',
                    style: TextStyle(fontSize: 16),
                  )),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threB1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threB1',
                Qnumber: 'i. ',
                question: 'Estimated values of vital statistics of the MOH are',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threB1']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threB2YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threB2',
                Qnumber: 'ii. ',
                question:
                    'National, Provincial, District and MOH area vital statistics are displayed in a table',
                    hintText: (SPHM_Data_MAP['SPHM_DataSet.threB2']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threB3YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threB3',
                Qnumber: 'iii. ',
                question:
                    'Has she displayed achievements of vital statistics by quater',
                    hintText: (SPHM_Data_MAP['SPHM_DataSet.threB3']).toString(),
              ),
              //
              const SizedBox(
                height: 5.0,
              ),
              Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    'c. Information on Clinics',
                    style: TextStyle(fontSize: 16),
                  )),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threC1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threC1',
                Qnumber: 'i. ',
                question: 'Details on clinics in her area are diplayed',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threC1']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threC2YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threC2',
                Qnumber: 'ii. ',
                question: 'Annual clinic plan of the area are displayed',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threC2']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threC3YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threC3',
                Qnumber: 'iii. ',
                question: 'clinic participation plan of PHM is available',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threC3']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threC4YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threC4',
                Qnumber: 'iv. ',
                question: 'Schedule for field weighing is displayed',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threC4']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threC5YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threC5',
                Qnumber: 'v. ',
                question:
                    'Specialized and special clinics in hospitals are displayed',
                    hintText: (SPHM_Data_MAP['SPHM_DataSet.threC5']).toString(),
              ),
              //
              const SizedBox(
                height: 5.0,
              ),
              Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    'd. Advance Program',
                    style: TextStyle(fontSize: 16),
                  )),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threD1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threD1',
                Qnumber: 'i. ',
                question: 'Approval for advanced program is diplayed',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threD1']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threD2YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threD2',
                Qnumber: 'ii. ',
                question: 'Is it forwarded to the MOH through PHNS',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threD2']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threD3YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threD3',
                Qnumber: 'iii. ',
                question: 'It is planned according to the supervision roster',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threD3']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threD4YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threD4',
                Qnumber: 'iv. ',
                question:
                    'Specific areas such as Office, Field, Clinics & Field Weighing posts of Supervision correctly identified',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threD4']).toString(),
              ),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threD5YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threD5',
                Qnumber: 'v. ',
                question:
                    'Dates of monthly conferences, local conferences & in service trainings are mentioned',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threD5']).toString(),
              ),
              //
              const SizedBox(
                height: 5.0,
              ),
              Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    'e. Charts',
                    style: TextStyle(fontSize: 16),
                  )),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threE1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threE1',
                Qnumber: 'i. ',
                question:
                    'Details on population, number of houses, number of eligible families are updated according to the PHM area',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threE1']).toString(),
              ),
              //
              const SizedBox(
                height: 5.0,
              ),
              Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    'f. Graph',
                    style: TextStyle(fontSize: 16),
                  )),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.threF1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.threF1',
                Qnumber: 'i. ',
                question:
                    'Indicators on Antenatal Care, Outcome of Pregnancy, Postnatal Care, Famiy planning and Nutritional status of children for the past 2 years and quarterly for the current year are displayed in bara charts',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.threF1']).toString(),
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
                Navigator.of(context).pop('SPHM_2');
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
                Navigator.of(context).pushNamed('SPHM_4');
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
