import 'package:firebase_core/firebase_core.dart';
import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:project/routes/routes.dart';
import 'package:project/app_tree/screens/loading.dart';
import 'package:project/app_tree/data/SPHM/SPHMdataStorage.dart';
import 'package:project/app_tree/screens/home.dart';

bool GlobalKey = true;

void main() async 
{
  // if (GlobalKey) {
  WidgetsFlutterBinding.ensureInitialized();
  await SPHMSecureStorage.checkFirstTimeWrite();
  await Firebase.initializeApp();

  // GlobalKey = false;
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    //

    //
    return MaterialApp(
      title: 'Flutter',
      routes: AppRoutes.define(),

      home: Home(),
      //home: LoadingScr(),
      // initialRoute: ,
    );
  }
}
