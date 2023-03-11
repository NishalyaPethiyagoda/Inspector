import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/functions/vari_lines_count.dart';
import 'package:project/pdf/functions/reshapeAnswer.dart';

double positionedAnswers(
    double currentHeight,
    PdfDocument document,
    PdfPage page,
    PdfFont contentFont,
    double q_horiStartPosi,
    double a_horiStartPosi,
    double a_NumberOfLines,
    String Q,
    String variName) {
  double textlineH = totLineHeightFunc(SPHM_Data_MAP[variName]);

  currentHeight = currentHeight + textlineH;

  PdfTextElement(text: Q, font: contentFont).draw(
      page: page, bounds: Rect.fromLTWH(q_horiStartPosi, currentHeight, 0, 0))!;

  // final double answerLength = contentFont
  //     .measureString(SPHM_Data_MAP[variName])
  //     .width; //answerlength = 435.276

  List<String> answers =
      reshapeAnswer(variName, 92); //92 charachters frm start to margin

  for (int i = 0; i < answers.length; i++) {
    currentHeight += 14;
    PdfTextElement(text: answers[i], font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(a_horiStartPosi, currentHeight, 0, 0))!;
  }
  return currentHeight;
}
