
import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/widgets/textfields/yesNoRemark.dart';

class SPHM_8_Duties_PHNS_unavail extends StatefulWidget {
  const SPHM_8_Duties_PHNS_unavail({ Key? key }) : super(key: key);

  @override
  State<SPHM_8_Duties_PHNS_unavail> createState() => _SPHM_8_Duties_PHNS_unavailState();
}

class _SPHM_8_Duties_PHNS_unavailState extends State<SPHM_8_Duties_PHNS_unavail> {
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
            '8. Duties where PHNS is Unavailable',
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
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold
            ),
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
                DataSetName_nd_YesNo: 'SPHM_DataSet.e1YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.e1',
                  Qnumber: 'i. ',
                  question: 'Does SPHM has the ability to prepare H 509, EPI return and Family planning concise return',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.e1']).toString(),),
              YesNoRemark(
                DataSetName_nd_YesNo: 'SPHM_DataSet.e2YN',
                DataSetName_nd_Remark: 'SPHM_DataSet.e2',
                  Qnumber: 'ii. ',
                  question: 'Does she forward the quarterly returns to relevant places timely',
                hintText: (SPHM_Data_MAP['SPHM_DataSet.e2']).toString(),),
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
                Navigator.of(context).pop('SPHM_7');
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
                Navigator.of(context).pushNamed('SPHM_9');
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
