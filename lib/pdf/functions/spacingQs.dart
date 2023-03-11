import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

int spaceCount(
  String? STR,
  double horiQStartPosi,
  double currentHeight,
) {
  // find line count
  int count = 1;
  // double lineHeight = 18.0;         //text = 12.0 , linespace = 4.0

  // search for line ends
  if (STR == null) {
    count = 1;
  } else {
    for (int i = 0; i < STR.length; i++) {
      int spaceNum = 0;

      if (STR[i] == "") {
        count = count + 1;
      }
    }
  }

  return count;
}
