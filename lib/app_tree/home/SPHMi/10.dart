import 'package:flutter/material.dart';
//import 'package:project/widgets/textfields/noPercentRemark.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
//import 'package:project/widgets/textfields/noRemark.dart';
import 'package:project/widgets/textfields/text_container.dart';
//import 'package:project/widgets/textfields/text_widgets.dart';
//import 'package:project/widgets/textfields/satisPercenRemark.dart';
//import 'package:project/widgets/textfields/yesNoRemark.dart';

class SPHM_10_StrongWeakPoints extends StatefulWidget {
  const SPHM_10_StrongWeakPoints({Key? key}) : super(key: key);

  @override
  State<SPHM_10_StrongWeakPoints> createState() =>
      _SPHM_10_StrongWeakPointsState();
}

class _SPHM_10_StrongWeakPointsState extends State<SPHM_10_StrongWeakPoints> {
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
              '10. Strong And Weak Points',
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
          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 12.0, 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textContainer("Strong Points"),
              Container(
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                padding: const EdgeInsets.fromLTRB(0, 2.0, 0, 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //color: Colors.amber,
                      padding: const EdgeInsets.fromLTRB(0, 35.0, 0, 0),
                      constraints: BoxConstraints(
                        maxHeight: double.infinity,
                        maxWidth: MediaQuery.of(context).size.width * 0.15,
                      ),
                      child: const Text("1. \n\n\n2. \n\n\n3. \n\n\n4. \n"),
                    ),
                    Container(
                      //color: Colors.green,
                      constraints: BoxConstraints(
                        maxHeight: double.infinity,
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      child: TextField(
                          style: TextStyle(
                            height: 1.5,
                          ),
                          maxLines: 10,
                          minLines: 7,
                          decoration:  InputDecoration(
                            //contentPadding: EdgeInsets.all(8),
                            hintText: (SPHM_Data_MAP['SPHM_DataSet.t1']).toString(),
                            //fillColor: Colors.amber,
                            labelText: '',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          onChanged: (value) {
                            SPHM_Data_MAP['SPHM_DataSet.t1'] = value;
                          }),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              textContainer("Weak Points"),
              Container(
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                padding: const EdgeInsets.fromLTRB(0, 2.0, 0, 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //color: Colors.amber,
                      padding: const EdgeInsets.fromLTRB(0, 35.0, 0, 0),
                      constraints: BoxConstraints(
                        maxHeight: double.infinity,
                        maxWidth: MediaQuery.of(context).size.width * 0.15,
                      ),
                      child: const Text("1. \n\n\n2. \n\n\n3. \n\n\n4. \n"),
                    ),
                    Container(
                      //color: Colors.green,
                      constraints: BoxConstraints(
                        maxHeight: double.infinity,
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      child: TextField(
                          style: TextStyle(
                            height: 1.5,
                          ),
                          maxLines: 10,
                          minLines: 7,
                          decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(8),
                            hintText: (SPHM_Data_MAP['SPHM_DataSet.t2']).toString(),
                            labelText: '',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          onChanged: (value) {
                            SPHM_Data_MAP['SPHM_DataSet.t2'] = value;
                          }),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 67),
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
                Navigator.of(context).pushNamed('SPHM_11');
                print(SPHM_Data_MAP['SPHM_DataSet.t2']);
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
