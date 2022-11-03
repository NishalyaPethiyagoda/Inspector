import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/routes/routes.dart';
import 'package:project/app_tree/data/ProfileSettings/user_preferences.dart';

import 'package:project/app_tree/data/ProfileSettings/settings_class.dart';
import 'package:project/app_tree/screens/profile_sc.dart';
import 'package:project/app_tree/data/ProfileSettings/userstorage.dart';
import 'package:project/app_tree/screens/authenticationdata.dart';

class LoadingScr extends StatefulWidget {
  const LoadingScr({Key? key}) : super(key: key);

  @override
  State<LoadingScr> createState() => _LoadingScrState();
}

class _LoadingScrState extends State<LoadingScr> {
  //

  //
  Future writeEmail() async {
    UserSecureStorage.writeData('usernameofmyapp', user_nameController);
  }

  Future writePassword() async {
    UserSecureStorage.writeData('passwordofmyapp', passwordController);
  }

//retrieving saved data function
  void _populateFields() async {
    final settings = await preferencesService.getSettings();
    //
    setState(() {
      firstRunController.text = settings.isFirstrun;
      nameController.text = settings.name;
      emailController.text = settings.email;
      user_nameController.text = settings.userName;
      passwordController.text = settings.password;
      additionalInfoController.text = settings.additionalInfo;
    });
  }

  void initState() {
    super.initState();

    _populateFields();
  }

  //String Run = 'true';
  String Run = firstRunController.text;

  @override
  Widget build(BuildContext context) {
    //
    final nq = MediaQuery.of(context);
    //
    final logo = Image.asset(
      "assets/inspector.png",
      //height: nq.size.height,

      fit: BoxFit.fitWidth,
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.amber,
      child: MaterialButton(
          minWidth: nq.size.width / 1.2,
          padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          child: const Text(
            'Login',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.normalRun);
          }),
    );
    //
    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.amber,
      child: MaterialButton(
          minWidth: nq.size.width / 1.2,
          padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          child: const Text(
            'Register',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            saveSettings();
            Navigator.of(context).pushNamed(AppRoutes.firstRun);
          }),
    );
    //
    Column dispalyButtons(String Run) {
      if (Run == 'true') {
        firstRunController.text = 'false';
        return Column(
          children: [
            registerButton,
            Padding(padding: EdgeInsets.all(10.0)),
            loginButton,
          ],
        );
        //
      } else {
        return Column(
          children: [
            loginButton,
          ],
        );
      }
    }
    // final buttons = Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   //crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [

    //     loginButton,
    //     Padding(padding: EdgeInsets.all(12.0)),
    //     registerButton,
    //   ],
    // );
    //
    return Scaffold(
      body: Container(
        width: nq.size.width,
        color: Color.fromARGB(255, 210, 210, 210),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          // CircleAvatar(
          //   radius: 120, // Image radius
          //   backgroundImage: NetworkImage('PROJECT/assets/inspector.png'),
          // ),
          Container(
            width: nq.size.width,
            height: nq.size.height / 2,
            child: logo,
          ),
          //logo,
          SizedBox(
            height: 35,
          ),
          dispalyButtons(Run),
        ]),
      ),
    );
  }
}
