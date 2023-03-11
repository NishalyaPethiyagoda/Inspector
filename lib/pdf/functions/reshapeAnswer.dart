import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

List<String> reshapeAnswer(String variName, int maxLenght) {
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
