import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/pdf_widgets/pdf_createPDFText.dart';
import 'package:project/pdf/pdf_widgets/pdf_YNRemark.dart';

import '../pdf_widgets/pdf_PositionedAns.dart';

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
  double topicPosi = currentPosiHeight + 1.5;
  const topicleft = 5.0;

  page.graphics.drawString(
    '9. Special services:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, topicPosi, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 35;
  horiStartPosi = horiStartPosi;
  //tempheight = currentHeight + 18.0;
  PdfTextElement(text: '1. Creative interventions', font: contentFont).draw(
      page: page,
      bounds: Rect.fromLTWH(horiStartPosi, currentPosiHeight, 0, 0))!;

  //a
  newPosiHeight = positionedAnswers(
      currentPosiHeight,
      document,
      page,
      contentFont,
      20,
      40,
      4,
      'a.  To improve quality of service of PHMM :',
      'SPHM_DataSet.n1a');
  currentPosiHeight = newPosiHeight;
  //b
  newPosiHeight = positionedAnswers(
      currentPosiHeight,
      document,
      page,
      contentFont,
      20,
      40,
      3,
      'b.  To strengthen the managemnt information system :',
      'SPHM_DataSet.n1b');
  currentPosiHeight = newPosiHeight;
  //2
  newPosiHeight = positionedAnswers(
      currentPosiHeight,
      document,
      page,
      contentFont,
      0,
      40,
      1,
      '2. Does she cooperate with other members of the staff maintaining the team spirit :',
      'SPHM_DataSet.n2');
  currentPosiHeight = newPosiHeight;
  //3
  newPosiHeight = positionedAnswers(
      currentPosiHeight,
      document,
      page,
      contentFont,
      0,
      40,
      1,
      '3. Interventions done to upgrade the health status in the field :',
      'SPHM_DataSet.n3');
  currentPosiHeight = newPosiHeight;
  //4
  newPosiHeight = positionedAnswers(
      currentPosiHeight,
      document,
      page,
      contentFont,
      0,
      40,
      1,
      '4. Communication skills - Action taken to imporove her communication skills :',
      'SPHM_DataSet.n4');
  currentPosiHeight = newPosiHeight;
  //5
  newPosiHeight = positionedAnswers(
      currentPosiHeight,
      document,
      page,
      contentFont,
      0,
      40,
      1,
      '5. Number of training programs participated during the last 2 years :',
      'SPHM_DataSet.n4');
  currentPosiHeight = newPosiHeight;

  ///////////////////////////////// section 10 ////////////////////////////
  currentPosiHeight += 14;

  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  topicPosi = currentPosiHeight + 1.5;

  page.graphics.drawString(
    '10. Strong and weak points identified during the supervision:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, topicPosi, 500, 50),
  );

  currentPosiHeight += 35;
  horiStartPosi = horiStartPosi;

  page.graphics.drawString(
    'Strong Points:',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, currentPosiHeight, 0, 0),
  );
  page.graphics.drawString(
    'Weak Points:',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft + 265, currentPosiHeight, 0, 0),
    //topicLeft + 265 is an assumed value
  );
  
  //1
  newPosiHeight = IntegerPositionedAnswers(currentPosiHeight, document, page,
      contentFont, 0, 0, 1, '', 'SPHM_DataSet.t1');
  //currentPosiHeight = newPosiHeight;
  //2
  newPosiHeight = IntegerPositionedAnswers(currentPosiHeight, document, page,
      contentFont, 0, 265, 1, '', 'SPHM_DataSet.t2');
}
