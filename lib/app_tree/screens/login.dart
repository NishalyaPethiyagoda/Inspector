import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:project/routes/routes.dart';
import 'package:project/app_tree/data/ProfileSettings/user_preferences.dart';
import 'package:project/app_tree/data/ProfileSettings/userstorage.dart';

import 'package:project/app_tree/data/ProfileSettings/settings_class.dart';
import 'package:project/app_tree/screens/profile_sc.dart';

import 'package:project/app_tree/screens/authenticationdata.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
  final username = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //

    //
    final mq = MediaQuery.of(context);
    //
    final OkButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.amber,
        child: MaterialButton(
            minWidth: mq.size.width / 1.5,
            padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () async {
              await FirebaseFirestore.instance
                  .collection('test')
                  .doc('1')
                  .set({'hello': 'hello'});
              if (user_nameController.text == username.text &&
                  passwordController.text == password.text) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.authHome, (Route<dynamic> route) => false);
              } else {
                print('error');
              }
            }));
    //
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 210, 210, 210),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Login'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.fromLTRB(25, 100, 25, 25),
                padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
                child: Center(
                  child: TextFormField(
                    controller: username,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Enter username',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.fromLTRB(25, 0, 25, 25),
                padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
                child: Center(
                  child: TextFormField(
                    controller: password,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: 'Enter Password',
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              OkButton,
            ],
          ),
        ));
  }
}
