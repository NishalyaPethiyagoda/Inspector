import 'package:flutter/material.dart';
import 'package:project/routes/routes.dart';
import 'package:project/widgets/cards/sections.dart';
import 'package:project/app_data/colors.dart';

class EachSection {
  String secNAME;
  String secROUTE;

  EachSection(this.secNAME, this.secROUTE);
}

class Sections extends StatelessWidget {
  Sections({Key? key}) : super(key: key);
  //
  final List<EachSection> eachsection = [
    EachSection('0. superviser details', 'SPHM_0'),
    EachSection('1. Basic Information', 'SPHM_1'),
    EachSection('2. General Office Conditions', 'SPHM_2'),
    EachSection('3. Wall Paper Maintainance', 'SPHM_3'),
    EachSection('4. Maintainance of Registers, Records and Returns in the Office', 'SPHM_4'),
    EachSection('5. Action Plan of SPHM', 'SPHM_5'),
    EachSection('6. Supervision Activities', 'SPHM_6'),
    EachSection('7. Maintanance of management information system (MIS)', 'SPHM_7'),
    EachSection('8. Duties where PHNS is unavailable', 'SPHM_8'),
    EachSection('9. Special Services', 'SPHM_9'),
    EachSection('10. Identified Strong and Weak points', 'SPHM_10'),
    EachSection('11. Develop Action Plan with SPHM to overcome the Weak points', 'SPHM_11'),
    EachSection('12. Sign and Date', 'SPHM_12'),
  ];
  //
  // final List<String> secNames = [
  //   '0. superviser details',
  //   '1. Basic Information',
  //   '2. General Office Conditions',
  //   '3. Wall Paper Maintainance',
  //   '4. Maintainance of Registers, Records and Returns in the Office',
  //   '5. Action Plan of SPHM',
  //   '6. Supervision Activities',
  //   '7. Maintanance of management information system (MIS)',
  //   '8. Duties where PHNS is unavailable',
  //   '9. Special Services',
  //   '10. Identified Strong and Weak points',
  //   '11. Develop Action Plan with SPHM to overcome the Weak points',
  //   '12. Sign and Date',
  // ];
  // //
  // final List<String> allroutes = [
  //   '0',
  //   '1',
  //   '2',
  //   '3',
  //   '4',
  //   '5',
  //   '6',
  //   '7',
  //   '8',
  //   '9',
  //   '10',
  //   '11',
  //   '12',
  // ];
  // //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Supervising Public Health Midwife'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  eachsection.map((e) =>SectionCard(name: e.secNAME, eachroute: e.secROUTE))
                      .toList(),
                ),
              ),
            ),
          ],
        ));
  }
}
