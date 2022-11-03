import 'package:flutter/material.dart';
import 'package:project/routes/routes.dart';
import 'package:project/app_data/colors.dart';
import 'package:project/app_data/scale_ratio.dart';
import 'package:project/app_tree/screens/profile_sc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //

    final MidWife = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.cyan[300],
      child: MaterialButton(
          minWidth: double.infinity,
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          child: const Text(
            'SPHM Inspection',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.of(context)
                .pushNamed(AppRoutes.authSPHMidwifeSectionScreen);
          }),
    );
//
    final NursingSister = Material(
      elevation: 5.0,
      color: Colors.cyan[600],
      borderRadius: BorderRadius.circular(12.0),
      child: const MaterialButton(
          minWidth: double.infinity,
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          child: Text(
            'Public Health Nursing Sister',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: null),
    );
    //
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inspections'),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              icon: const Icon(
                Icons.person,
                color: Colors.white,
                size: 35,
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MidWife,
              Container(
                height: 15.0,
              ),
              NursingSister,
            ],
          ),
        ));
  }
}
