import 'package:flutter/material.dart';


Widget App_Bar(String appbar_text) {
  return AppBar(
    backgroundColor: Colors.blue,
    centerTitle: false,
    bottom: PreferredSize(
      preferredSize: Size(0.0, 20.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
        child: Text(
          appbar_text,
          textAlign: TextAlign.start,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 19.0,
          ),
        ),
      ),
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
  );
}


