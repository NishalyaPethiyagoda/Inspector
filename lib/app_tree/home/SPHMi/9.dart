import 'package:flutter/material.dart';
import 'package:project/widgets/textfields/noPercentRemark.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/widgets/textfields/noRemark.dart';
import 'package:project/widgets/textfields/text_container.dart';
import 'package:project/widgets/textfields/text_widgets.dart';
import 'package:project/widgets/textfields/satisPercenRemark.dart';
import 'package:project/widgets/textfields/yesNoRemark.dart';

class SPHM_9_specialServices extends StatefulWidget {
  const SPHM_9_specialServices({Key? key}) : super(key: key);

  @override
  State<SPHM_9_specialServices> createState() => _SPHM_9_specialServicesState();
}

class _SPHM_9_specialServicesState extends State<SPHM_9_specialServices> {
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
              '9. Special Services',
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
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                  constraints: BoxConstraints(
                    maxHeight: double.infinity,
                    maxWidth: MediaQuery.of(context).size.width * 6,
                  ),
                  padding: const EdgeInsets.fromLTRB(6, 6, 4, 6),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    '1. Creative inventions',
                    style: TextStyle(fontSize: 16),
                  )),
              longQuestions(
                context,
                'SPHM_DataSet',
                'n1a',
                '1.\n   a. ',
                '\nTo improve quality of service of PHMM',
                (SPHM_Data_MAP['SPHM_DataSet.n1a']).toString(),
              ),
              longQuestions(
                context,
                'SPHM_DataSet',
                'n1b',
                '1.\n   b. ',
                '\nTo strengthen the management information system',
                (SPHM_Data_MAP['SPHM_DataSet.n1b']).toString(),
              ),
              longQuestions(
                context,
                'SPHM_DataSet',
                'n2',
                '2. ',
                'Does she cooperate with other members of the staff maintaining the team spirit',
                (SPHM_Data_MAP['SPHM_DataSet.n2']).toString(),
              ),
              longQuestions(
                context,
                'SPHM_DataSet',
                'n3',
                '3. ',
                'Interventions done to upgrade the health status in the field',
                (SPHM_Data_MAP['SPHM_DataSet.n3']).toString(),
              ),
              longQuestions(
                context,
                'SPHM_DataSet',
                'n4',
                '4. ',
                'Communication skills - Action taken to improve her communication skills',
                (SPHM_Data_MAP['SPHM_DataSet.n4']).toString(),
              ),
              longQuestions(
                context,
                'SPHM_DataSet',
                'n5',
                '5. ',
                'Number of training programs participated during the last 2 years',
                (SPHM_Data_MAP['SPHM_DataSet.n5']).toString(),
              ),
              SizedBox(
              height: 55.0,
            )
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
                Navigator.of(context).pop('SPHM_9');
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
                Navigator.of(context).pushNamed('SPHM_10');
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
