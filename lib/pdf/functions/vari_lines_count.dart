import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

double totLineHeightFunc(String? STR) {
  // find line count
  int count = 1;
  double height = 18.0;         //text = 12.0 , linespace = 4.0
  double totLineHeight = 0;

  // search for line ends
  if (STR == null) {
    count = 1;
  } else {
    for (int i = 0; i < STR.length; i++) {
      if (STR[i] == "\n") {
        count= count+1;
      }
    }
  }
  
  totLineHeight = count * height;
  return totLineHeight ;
}
