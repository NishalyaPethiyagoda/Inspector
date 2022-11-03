import 'package:flutter/material.dart';

import 'package:project/app_tree/data/ProfileSettings/user_preferences.dart';

import 'package:project/app_tree/data/ProfileSettings/userstorage.dart';
import 'package:project/app_tree/screens/loading.dart';
import 'package:project/app_tree/screens/authenticationdata.dart';
class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isObscure = true;

  
  //
  String name = '';
  String hospitalName = '';
  String email = '';
  String password = '';
  String additionalNote = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5.0,
        backgroundColor: Colors.blue,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 246, 246, 246),
                Color.fromARGB(255, 208, 208, 208),
              ]),
        ),
        child: ListView(padding: const EdgeInsets.all(10.0), children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: nameController,
            //
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              labelText: "Name : ",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                  )),
            ),
            keyboardType: TextInputType.name,
            //
          ),
          const SizedBox(
            height: 14.0,
          ),
          TextField(
            controller: emailController,
            //
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              labelText: "Email : ",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                  )),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 14.0,
          ),
          TextField(
            controller: user_nameController,
            //
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              labelText: "User Name : ",
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                  )),
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          TextField(
            controller: passwordController,
            //
            obscureText: _isObscure,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
              labelText: "Password : ",
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                  )),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            height: 150.0,
            child: TextField(
              controller: additionalInfoController,

              //
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                labelText: "Additional Note : ",
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.white,
                    )),
              ),
              keyboardType: TextInputType.name,
              maxLines: 5,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: TextButton(
                    onPressed: saveSettings,
                    child: const Text(
                      'Save',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                width: 150,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: const TextButton(
                    onPressed: null,
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
        ]),
      ),
    );
  }
}
