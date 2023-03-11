import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/routes/routes.dart';
import 'package:project/app_data/app_bar.dart';
import 'package:project/widgets/textfields/yesNo.dart';
import 'package:project/app_tree/data/SPHM/SPHMdataStorage.dart';

class SPHMSupervisorInfo extends StatefulWidget {
  const SPHMSupervisorInfo({Key? key}) : super(key: key);

  @override
  State<SPHMSupervisorInfo> createState() => _SPHMSupervisorInfoState();
}

class _SPHMSupervisorInfoState extends State<SPHMSupervisorInfo> {
  //
  void getdata() async {
    DocumentSnapshot data =
        await FirebaseFirestore.instance.collection('data').doc('1').get();
    SPHM_Data_MAP = data.data() as Map<String, dynamic>;
    
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //
  Widget _buildname(String DataSetName, String Datav1) {
    return TextField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: 'Supervisor Name',
        hintText: (SPHM_Data_MAP['SPHM_DataSet.supervisorName']).toString(),
        labelStyle: TextStyle(color: Colors.black),
      ),
      onChanged: (val) {
        String match_vari = '${DataSetName}.${Datav1}';
        SPHM_Data_MAP[match_vari] = val;
        print(SPHM_DataSet.supervisorName);
      },
    );
  }

  Widget _designation(String DataSetName, String Datav1) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Supervisor designation',
        hintText: (SPHM_Data_MAP['SPHM_DataSet.s_designation']).toString(),
        labelStyle: TextStyle(color: Colors.black),
      ),
      onChanged: (val) {
        String match_vari = '${DataSetName}.${Datav1}';
        SPHM_Data_MAP[match_vari] = val;
        
      },
    );
  }

  Widget _started_time(String DataSetName, String Datav1) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration:  InputDecoration(
        labelText: 'Supervision started time',
        hintText: (SPHM_Data_MAP['SPHM_DataSet.s_started_time']).toString(),
        labelStyle: TextStyle(color: Colors.black),
      ),
      onChanged: (val) {
        String match_vari = '${DataSetName}.${Datav1}';
        SPHM_Data_MAP[match_vari] = val;
      },
    );
  }

  Widget _ended_time(String DataSetName, String Datav1) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Supervision ended time',
        hintText: (SPHM_Data_MAP['SPHM_DataSet.s_ended_time']).toString(),
        labelStyle: TextStyle(color: Colors.black),
      ),
      onChanged: (val) {
        String match_vari = '${DataSetName}.${Datav1}';
        SPHM_Data_MAP[match_vari] = val;
      },
    );
  }
  Widget _Date(String DataSetName, String Datav1) {
    return TextField(
      keyboardType: TextInputType.datetime,
      decoration:  InputDecoration(
        labelText: 'Supervision date ',
        hintText: (SPHM_Data_MAP['SPHM_DataSet.date']).toString(),
        labelStyle: TextStyle(color: Colors.black),
      ),
      onChanged: (val) {
        String match_vari = '${DataSetName}.${Datav1}';
        SPHM_Data_MAP[match_vari] = val;
      },
    );
  }
  Widget _MOH_area(String DataSetName, String Datav1) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration:  InputDecoration(
        labelText: 'MOH area ',
        hintText: (SPHM_Data_MAP['SPHM_DataSet.MOH_area']).toString(),
        labelStyle: TextStyle(color: Colors.black),
      ),
      onChanged: (val) {
        String match_vari = '${DataSetName}.${Datav1}';
        SPHM_Data_MAP[match_vari] = val;
      },
    );
  }

  Widget _PHNS_name(String DataSetName, String Datav1) {
    return TextField(
      keyboardType: TextInputType.name,
      decoration:  InputDecoration(
        
        labelText: 'Name of SPHM',
        hintText: (SPHM_Data_MAP['SPHM_DataSet.SPHM_name']).toString(),
        labelStyle: TextStyle(color: Colors.black),
      ),
      onChanged: (val) {
        String match_vari = '${DataSetName}.${Datav1}';
        SPHM_Data_MAP[match_vari] = val;
      },
    );
  }

  Widget _supervision_objective(String DataSetName, String Datav1) {
    return TextField( 
      keyboardType: TextInputType.text,
      decoration:  InputDecoration(
        labelText: 'Supervision objective',
        hintText: (SPHM_Data_MAP['SPHM_DataSet.supervision_objective']).toString(),
        labelStyle: TextStyle(color: Colors.black),
      ),
      onChanged: (val) {
        String match_vari = '${DataSetName}.${Datav1}';
        SPHM_Data_MAP[match_vari] = val;
      },
    );
  }

  // Widget _SPHM_informed_o_not() {
  //   return TextFormField(
  //     decoration: const InputDecoration(
  //       labelText: 'Supervision objective',
  //       labelStyle: TextStyle(color: Colors.black),
  //     ),
  //     validator: (value) {
  //       if (value == null || value.isEmpty) {
  //         return 'Please enter some text';
  //       }
  //     },
  //     onSaved: (value) {
  //       SPHM_informed_o_not = value!;
  //     },
  //     onChanged: (value) {},
  //   );
  // }

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
              '0.Supervisor Information',
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

      //       AppBar(
      //   backgroundColor: Colors.blue,
      //   centerTitle: false,
      //   toolbarHeight: 100,
      //   title: Text(
      //     'appbar_textffffffffffffffffffffffffffffffffffffffffffffff',
      //     textAlign: TextAlign.start,
      //     style: const TextStyle(
      //       color: Colors.white,
      //       fontSize: 19.0,
      //     ),
      //   ),
      //   actions: <Widget>[
      //     ElevatedButton(
      //       onPressed: () {},
      //       child: const Text(
      //         "Clear Fields",
      //         style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(15.0, 0.0, 12.0, 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 8,
              ),
              _buildname("SPHM_DataSet", "supervisorName"),
              const SizedBox(
                height: 8,
              ),
              _designation("SPHM_DataSet", "s_designation"),
              _started_time("SPHM_DataSet", "s_started_time"),
              const SizedBox(
                height: 8,
              ),
              _Date( "SPHM_DataSet", "date" ),
              const SizedBox(
                height: 8,
              ),
              _ended_time("SPHM_DataSet", "s_ended_time"),
              const SizedBox(
                height: 8,
              ),
              _MOH_area("SPHM_DataSet", "MOH_area"),
              const SizedBox(
                height: 8,
              ),
              _PHNS_name("SPHM_DataSet", "SPHM_name"),
              const SizedBox(
                height: 8,
              ),
              _supervision_objective("SPHM_DataSet", "supervision_objective"),
              YesNo(
                  DataSetName_nd_vari: "SPHM_DataSet.SPHM_informed_o_not",
                  qNumber: "",
                  question:
                      "Was the SPHM informed regarding the supervision: "),
              const SizedBox(
                height: 75.0,
              ),
              //_SPHM_informed_o_not(),
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
                setState(() {
                  SPHMSecureStorage.setAll();
                });
                Navigator.of(context).pop('auth-SPHMidwifeSecScr');
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
              onPressed: () async {
                await SPHMSecureStorage.Getall();
                Navigator.of(context).pushNamed('SPHM_1');
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
