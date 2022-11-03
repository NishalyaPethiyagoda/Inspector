import 'package:flutter/material.dart';

Widget textContainer(String text) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      padding: const EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 2.0),
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      constraints: BoxConstraints(
          maxHeight: double.infinity,
        //  maxWidth: MediaQuery.of(context).size.width,
        ),
      child:  Text(
        text,
        style: TextStyle(fontSize: 16),
      ));
}
