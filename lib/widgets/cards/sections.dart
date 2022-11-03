import 'package:flutter/material.dart';
import 'package:project/routes/routes.dart';
import 'package:project/app_tree/home/SPHMi/0/zero.dart';
import 'package:project/app_tree/data/SPHM/SPHMdataStorage.dart';

class SectionCard extends StatelessWidget {
  //
  final String name;
  final String eachroute; ////////////////
  //
  SectionCard({required this.name, required this.eachroute}); /////////
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.cyan[300],
        child: InkWell(
          child: MaterialButton(
              minWidth: 320.0,
              //height: 75,
              padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      name,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              onPressed: () async {
                await SPHMSecureStorage.Getall();
                Navigator.of(context)
                    .pushNamed(eachroute); /////////  (AppRoutes.authRegister)
              }),
        ),
      ),
    );
  }
}
