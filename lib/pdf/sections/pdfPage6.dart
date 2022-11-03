import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/pdf_widgets/pdf_Q_&_A.dart';
import 'package:project/pdf/pdf_widgets/pdf_3_YNRemark.dart';
import 'package:project/pdf/pdf_widgets/pdfAdditionalQtxts.dart';

void page6(PdfDocument document, PdfFont contentFont) {
//
  final PdfPage page = document.pages.add(); //Add page to the PDF

  double currentPosiHeight = 0;
  double newPosiHeight = 0;
  double horiStartPosi = 0;

// //
//   ///
// /////////////////////////////////////   section 6 ////////////////////////
//   ///
//   //
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  double topic2Posi = currentPosiHeight + 1.5;
  const topicleft = 5.0;

  page.graphics.drawString(
    '9. Special services:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, topic2Posi, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 35;
  horiStartPosi = horiStartPosi;
  //tempheight = currentHeight + 18.0;
  PdfTextElement(text: '1. Creative interventions', font: contentFont).draw(
      page: page,
      bounds: Rect.fromLTWH(horiStartPosi, currentPosiHeight, 0, 0))!;

  //a
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      40,
      'a.  To improve quality of service of PHMM :',
      'SPHM_DataSet.n1a');
  currentPosiHeight = newPosiHeight;
}
