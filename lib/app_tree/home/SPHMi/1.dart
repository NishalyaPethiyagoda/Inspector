import 'package:flutter/material.dart';
import 'package:project/widgets/textfields/text_widgets.dart';
import 'package:project/widgets/textfields/yesNo.dart';
//import 'package:project/widgets/checkBox.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/app_tree/data/SPHM/SPHMdataStorage.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

class SPHM_basic_info extends StatefulWidget {
  SPHM_basic_info({Key? key}) : super(key: key);

  @override
  State<SPHM_basic_info> createState() => _SPHM_basic_infoState();
}

class _SPHM_basic_infoState extends State<SPHM_basic_info> {
  
  late SPHM_Data data;
  
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        bottom: const PreferredSize(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
            child: Text(
              '1.Basic Information',
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
              height: 15.0,
            ),
            //   TextField(
            //   maxLines: 7,
            //   minLines: 1,
            //   decoration: const InputDecoration(
            //     labelText: 'Remark',
            //     labelStyle: TextStyle(color: Colors.black),
            //   ),
            //   onChanged: (value) {
            //     variabale = value;
            //   }
            // ),
            ShortText(
                context,
                "SPHM_DataSet",
                "a. ",
                "Population: ",
                "population",
                (SPHM_Data_MAP['SPHM_DataSet.population']).toString()),
            ShortText(
                context,
                "SPHM_DataSet",
                "b. ",
                "Number of PHMs under supervision: ",
                "NoOf_PHM_UnderSupervision",
                (SPHM_Data_MAP['SPHM_DataSet.NoOf_PHM_UnderSupervision'])
                    .toString()),
            ShortText(
                context,
                "SPHM_DataSet",
                "c. ",
                "DAte of first appointment to this area: ",
                "dateFirstAppointment",
                (SPHM_Data_MAP['SPHM_DataSet.dateFirstAppointment'])
                    .toString()),
            ShortText(
                context,
                "SPHM_DataSet",
                "d. ",
                "Date of first appointment: ",
                "dateAppointmentToArea",
                (SPHM_Data_MAP['SPHM_DataSet.durationOfServiceAs_SPHM'])
                    .toString()),
            ShortText(
                context,
                "SPHM_DataSet",
                "e. ",
                "Duration of service as SPHM: ",
                "durationOfServiceAs_SPHM",
                (SPHM_Data_MAP['SPHM_DataSet.durationOfServiceAs_SPHM'])
                    .toString()),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'f. Transport facilities:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10.0,
            ),
            YesNo(
              DataSetName_nd_vari: "SPHM_DataSet.SPHM_providedWithTransport",
              qNumber: "  i. ",
              question: "Is the SPHM provided with transport facilities: ",
            ),
            const SizedBox(
              height: 8,
            ),
            LongAnswer1(
                context,
                "SPHM_DataSet",
                '      (Scooter/Moped) :',
                "SPHM_TransportMethod",
                (SPHM_Data_MAP['SPHM_DataSet.SPHM_TransportMethod'])
                    .toString()),
            // ShortText(
            //     context,
            //     "SPHM_DataSet",
            //     "     ",
            //     '(Scooter/Moped) :',
            //     "SPHM_TransportMethod",
            //     (SPHM_Data_MAP['SPHM_DataSet.SPHM_TransportMethod']).toString()),
            const SizedBox(
              height: 8,
            ),
            YesNo(
              DataSetName_nd_vari: "SPHM_DataSet.DoesSPHM_UseIt",
              qNumber: "  ii. ",
              question: 'Does she use it: ',
            ),
            LongAnswer1(
                context,
                "SPHM_DataSet",
                '  iii. if not, reason for not using transport facility',
                "ReasonFrNtUsingTransFacility",
                (SPHM_Data_MAP['SPHM_DataSet.ReasonFrNtUsingTransFacility'])
                    .toString()),
            YesNo(
              DataSetName_nd_vari: "SPHM_DataSet.SPHM_inFullUniform",
              qNumber: "g. ",
              question: 'Is the SPHM in complete uniform: ',
            ),
            const SizedBox(
              height: 75.0,
            ),
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
                Navigator.of(context).pop('SPHM_0');
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
                SPHMSecureStorage.setAll();
                Navigator.of(context).pushNamed('SPHM_2');
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
