import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/pdf_widgets/pdf_createPDFText.dart';
import 'package:project/pdf/pdf_widgets/pdf_YNRemark.dart';

import '../pdf_widgets/pdf_PositionedAns.dart';

void page7(PdfDocument document, PdfFont contentFont) {
  final PdfPage page = document.pages.add(); //Add page to the PDF

  double currentPosiHeight = 0;
  double newPosiHeight = 0;
  double horiStartPosi = 0;

// //
//   ///
// /////////////////////////////////////   section 11 ////////////////////////
//   ///
//   //
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  double topicPosi = currentPosiHeight + 1.5;
  const topicleft = 5.0;

  page.graphics.drawString(
    '11. Develop an action plan with the SPHM to overcom the weak points:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, topicPosi, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 35;

  double tableHeadLine1 = currentPosiHeight;
  double tableHeadLine2 = currentPosiHeight + 14;

  currentPosiHeight += 28;
  //1 Problems Identified
  page.graphics.drawString(
    'Problems',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(0, tableHeadLine1, 0, 0),
  );
  page.graphics.drawString(
    'Identified',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(0, tableHeadLine2, 0, 0),
  );

  newPosiHeight = IntegerPositionedAnswers(currentPosiHeight, document, page,
      contentFont, 0, 0, 1, 15, '', 'SPHM_DataSet.el1');

  //2 Underlying reasons
  double topicIndentation = 80;
  page.graphics.drawString(
    'Underlying',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicIndentation, tableHeadLine1, 0, 0),
  );
  page.graphics.drawString(
    'Reasons',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicIndentation, tableHeadLine2, 0, 0),
  );

  newPosiHeight = IntegerPositionedAnswers(currentPosiHeight, document, page,
      contentFont, 0, topicIndentation, 1, 15, '', 'SPHM_DataSet.el2');

  //3 proposed solutions
  topicIndentation += 80;
  page.graphics.drawString(
    'Proposed',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicIndentation, tableHeadLine1, 0, 0),
  );
  page.graphics.drawString(
    'solutions',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicIndentation, tableHeadLine2, 0, 0),
  );
  newPosiHeight = IntegerPositionedAnswers(currentPosiHeight, document, page,
      contentFont, 0, topicIndentation, 1, 15, '', 'SPHM_DataSet.el3');

  //4 proposed activity
  topicIndentation += 80;
  page.graphics.drawString(
    'Proposed',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicIndentation, tableHeadLine1, 0, 0),
  );
  page.graphics.drawString(
    'activity',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicIndentation, tableHeadLine2, 0, 0),
  );
  newPosiHeight = IntegerPositionedAnswers(currentPosiHeight, document, page,
      contentFont, 0, topicIndentation, 1, 15, '', 'SPHM_DataSet.el4');

  //5 responsibility
  topicIndentation += 80;
  page.graphics.drawString(
    'Responsibility',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicIndentation, tableHeadLine1, 0, 0),
  );
  newPosiHeight = IntegerPositionedAnswers(currentPosiHeight, document, page,
      contentFont, 0, topicIndentation, 1, 15, '', 'SPHM_DataSet.el5');

  //6 Time frame
  topicIndentation += 80;
  page.graphics.drawString(
    'Time frame',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicIndentation, tableHeadLine1, 0, 0),
  );
  newPosiHeight = IntegerPositionedAnswers(currentPosiHeight, document, page,
      contentFont, 0, topicIndentation, 1, 15, '', 'SPHM_DataSet.el6');

  ////////////////////////////   section 12 ///////////////////////////////
  ///
  currentPosiHeight = 0;
  currentPosiHeight += 525;

  newPosiHeight = createPDFTextEle(currentPosiHeight, document, page,
      contentFont, 0, 'Date:-', 'SPHM_DataSet.date');

  page.graphics.drawString(
    'Signature of the supervising officer ..........................................',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(230, currentPosiHeight, 0, 0),
  );
  currentPosiHeight += 14;

  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      230,
      'Designation:........................................-',
      'SPHM_DataSet.designation1');
  currentPosiHeight = newPosiHeight + 24;

  page.graphics.drawString(
    'Recomendations of the supervising officer .....................................................................................',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(0, currentPosiHeight, 0, 0),
  );
  currentPosiHeight += 14;
  page.graphics.drawString(
    '....................................................................................................................................................................',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(0, currentPosiHeight, 0, 0),
  );
  currentPosiHeight += 14;
  page.graphics.drawString(
    '............................................................................................................................................................................',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(0, currentPosiHeight, 0, 0),
  );
  currentPosiHeight += 24;
  page.graphics.drawString(
    'Date: ......................................',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(0, currentPosiHeight, 0, 0),
  );

  page.graphics.drawString(
    'Signature: .........................................................................',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(230, currentPosiHeight, 0, 0),
  );
  currentPosiHeight += 14;
  page.graphics.drawString(
    'Designation: ......................................................................',
    PdfStandardFont(PdfFontFamily.timesRoman, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(230, currentPosiHeight, 0, 0),
  );
}
