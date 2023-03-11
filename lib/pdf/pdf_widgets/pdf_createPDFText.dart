import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/vari_lines_count.dart';

double createPDFTextEle(
    double currentHeight,
    PdfDocument document,
    PdfPage page,
    PdfFont contentFont,
    double horiStartPosi,
    String Q,
    String variName) {
//
  double textlineH = totLineHeightFunc(SPHM_Data_MAP[variName]);

//
  if (currentHeight + textlineH > 700) {
    //add page
    PdfPage newPage = document.pages.add();
//
    currentHeight = 0;
    currentHeight = textlineH;
//
    PdfTextElement(text: Q, font: contentFont).draw(
        page: newPage,
        bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
    final double size1 = contentFont.measureString(Q).width;
//
    PdfTextElement(text: SPHM_Data_MAP[variName]!, font: contentFont).draw(
        page: newPage,
        bounds:
            Rect.fromLTWH(horiStartPosi + size1 + 10, currentHeight, 0, 0))!;
//
    return currentHeight;
//
  } else {
    //
    currentHeight = currentHeight + textlineH;
    //
    PdfTextElement(text: Q, font: contentFont).draw(
        page: page, bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
    final double size1 = contentFont.measureString(Q).width;
    //
    PdfTextElement(text: SPHM_Data_MAP[variName]!, font: contentFont).draw(
        page: page,
        bounds:
            Rect.fromLTWH(horiStartPosi + size1 + 10, currentHeight, 0, 0))!;
  }
  return currentHeight;
}
