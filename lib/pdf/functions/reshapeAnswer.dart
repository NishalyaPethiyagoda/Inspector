import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

//reshapeAnswer1 - only considers maximum possible length and form substrings
List<String> reshapeAnswer1(String variName, int maxLenght) {
  List<String> output = [];
  String input = SPHM_Data_MAP[variName];

  while (input.length > maxLenght) {
    int index = input.lastIndexOf(' ', maxLenght);
    if (index == -1) {
      index = maxLenght;
    }
    output.add(input.substring(0, index));
    input = input.substring(index + 1);
  }
  output.add(input);
  return output;
}

//reshapeAnswer2 - only considers maximum possible length and form substrings
List<List<String>> reshapeAnswer2(String variName, int maxLenght) {
  String inputString = SPHM_Data_MAP[variName];

  String currentString = '';
  bool inNumber = true;

  List<String> pointsList = [];
  List<String> pointStrings = inputString.split(RegExp(r'\d+\.'));

  for (int i = 1; i < pointStrings.length; i++) {
    String pointString = pointStrings[i].trim();
    if (pointString.isNotEmpty) {
      pointsList.add('$i. $pointString');
    }
  }

  List<List<String>> finalList = [];

  for (int i = 0; i < pointsList.length; i++) {
    String input2 = pointsList[i];
    List<String> eachSubStringList = [];

    while (input2.length > maxLenght) {
      int index = input2.lastIndexOf(' ', maxLenght);
      if (index == -1) {
        index = maxLenght;
      }
      eachSubStringList.add(input2.substring(0, index));
      input2 = input2.substring(index + 1);
    }
    eachSubStringList.add(input2);

    finalList.add(eachSubStringList);
  }
  return finalList;
}
