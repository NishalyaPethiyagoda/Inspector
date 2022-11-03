import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/widgets/textfields/sign_date.dart';
import 'package:project/pdf/SPHM_PDF.dart';

class SPHM_12_sign extends StatefulWidget {
  SPHM_12_sign({Key? key}) : super(key: key);

  // initState()

  @override
  State<SPHM_12_sign> createState() => _SPHM_12_signState();
}

class _SPHM_12_signState extends State<SPHM_12_sign> {
  @override
  Widget build(BuildContext context) {
    //
    // final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    //   onPrimary: Colors.black87,
    //   primary: Colors.grey[300],
    //   minimumSize: Size(88, 36),
    //   padding: EdgeInsets.symmetric(horizontal: 16),
    //   shape: const RoundedRectangleBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(2)),
    //   ),
    // );
    //
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        bottom: const PreferredSize(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
            child: Text(
              '12. Date and Sign',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SignAndDate(
              DataSet_nd_vari: "SPHM_DataSet.designation1",
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                child: Text(
                  'Create PDF',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  await FirebaseFirestore.instance
                      .collection('data')
                      .doc('1')
                      .set(SPHM_Data_MAP);
                  createPDF();
                },
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(25),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                            color: Color.fromARGB(255, 0, 142, 161))),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.cyan[600]),
                ))
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
                Navigator.of(context).pop('SPHM_11');
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.navigate_before, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
