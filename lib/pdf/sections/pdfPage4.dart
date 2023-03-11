import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'package:project/pdf/pdf_widgets/pdf_NumPerRem.dart';
import 'package:project/pdf/pdf_widgets/pdf_NumRem.dart';
import 'package:project/pdf/pdf_widgets/pdf_SatPerRem.dart';
import 'package:project/pdf/pdf_widgets/pdf_createPDFText.dart';

void page4(PdfDocument document, PdfFont contentFont) {
//
  final PdfPage page = document.pages.add(); //Add page to the PDF

  double currentPosiHeight = 0;
  double newPosiHeight = 0;

  double topic2Posi = currentPosiHeight + 1.5;
  const topicleft = 5.0;

  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  page.graphics.drawString(
    '6. Supervision Activities:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, topic2Posi, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 15; // rectangle + whitespace
//6
  //1.
  currentPosiHeight = pdfNumPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'i.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                             '
    'Number of supervisions planned for the last', //Ql1
    'quater', //ql2
    '', //ql3
    "SPHM_DataSet.si1num",
    "SPHM_DataSet.si1per",
    25, // remark start posi
    "SPHM_DataSet.si1remark",
  );
  //2.
  currentPosiHeight = pdfNumPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'ii.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                          '
    'Number of supervisions done in the quater', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.si2num",
    "SPHM_DataSet.si2per",
    25, // remark start posi
    "SPHM_DataSet.si2remark",
  );
  //3.
  currentPosiHeight = pdfNumPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'iii.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                          '
    'According to the diary, the number of', //Ql1
    'supervisions done in the last quarter', //ql2
    '', //ql3
    "SPHM_DataSet.si3num",
    "SPHM_DataSet.si3per",
    25, // remark start posi
    "SPHM_DataSet.si3remark",
  );
  //4.
  currentPosiHeight = pdfNumPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'iv.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                          '
    'Number of supervisions done according to', //Ql1
    'Format - B', //ql2
    '', //ql3
    "SPHM_DataSet.si4num",
    "SPHM_DataSet.si4per",
    25, // remark start posi
    "SPHM_DataSet.si4remark",
  );
  currentPosiHeight = currentPosiHeight + 25;
///////////////////////////////////
  ///////////////////////////////////////// 6.1 ////////////////////////
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  page.graphics.drawString(
    '6.1 Types of supervisions done in last quarter:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, currentPosiHeight, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 15; // rectangle + whitespace
//
  //1.
  currentPosiHeight = pdfNumRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'i.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                          '
    'PHM Office supervision', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.si11num",
    25, // remark start posi
    "SPHM_DataSet.si11remark",
  );
  //2.
  currentPosiHeight = pdfNumRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'ii.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                          '
    'field supervisions', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.si11num",
    25, // remark start posi
    "SPHM_DataSet.si11remark",
  );
  //3.
  currentPosiHeight = pdfNumRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'iii.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                          '
    'PHM Office and field supervision', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.si13num",
    25, // remark start posi
    "SPHM_DataSet.si13remark",
  );
  //4.
  currentPosiHeight = pdfNumRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'vi.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                          '
    'Supervision of weighing posts', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.si14num",
    25, // remark start posi
    "SPHM_DataSet.si14remark",
  );
  //5.
  currentPosiHeight = pdfNumRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'v.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                          '
    'Clinic supervisions', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.si15num",
    25, // remark start posi
    "SPHM_DataSet.si15remark",
  );
  currentPosiHeight = currentPosiHeight + 25;
///////////////////////////////////
  ///////////////////////////////////////// 6.2 ////////////////////////
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  page.graphics.drawString(
    '6.2 Supervision Reports:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, currentPosiHeight, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 15; // rectangle + whitespace

  //1.
  currentPosiHeight = pdfNumPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'i.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                          '
    'Number of supervision reports made during ', //Ql1
    'the last quarter', //ql2
    '', //ql3
    "SPHM_DataSet.si21num",
    "SPHM_DataSet.si21per",
    25, // remark start posi
    "SPHM_DataSet.si21remark",
  );
  //1.
  currentPosiHeight = pdfNumPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'ii.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                          '
    'Number of reports forwarded to MOH for ', //Ql1
    'approval', //ql2
    '', //ql3
    "SPHM_DataSet.si22num",
    "SPHM_DataSet.si22per",
    25, // remark start posi
    "SPHM_DataSet.si22remark",
  );
  //1.
  currentPosiHeight = pdfNumPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'iii.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                          '
    'Number of supervision reports submitted to ', //Ql1
    'PHM within 2 weeks', //ql2
    '', //ql3
    "SPHM_DataSet.si23num",
    "SPHM_DataSet.si23per",
    25, // remark start posi
    "SPHM_DataSet.si23remark",
  );
  currentPosiHeight = currentPosiHeight + 25;
  ///////////////////////////////////
  ///////////////////////////////////////// 6.3 ////////////////////////
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  page.graphics.drawString(
    '6.3 Quality of Supervision reports- check if details below are included:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, currentPosiHeight, 500, 50),
  );
  currentPosiHeight = currentPosiHeight + 15;

  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      40,
      'No .of reports examined   :',
      'SPHM_DataSet.si3numReports');
  currentPosiHeight = newPosiHeight;

  currentPosiHeight = currentPosiHeight + 15; // rectangle + whitespace
  //1.
  currentPosiHeight = pdfSatPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'i.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                          '
    'Objective of the supervsion', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.si31sat",
    "SPHM_DataSet.si31per",
    15, // remark start posi
    "SPHM_DataSet.si31remark",
  );
  //2.
  currentPosiHeight = pdfSatPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'ii.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                          '
    'Justification of the objective', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.si32sat",
    "SPHM_DataSet.si32per",
    15, // remark start posi
    "SPHM_DataSet.si32remark",
  );
  //3.
  currentPosiHeight = pdfSatPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'iii.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                          '
    'Data comparison', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.si33sat",
    "SPHM_DataSet.si33per",
    15, // remark start posi
    "SPHM_DataSet.si33remark",
  );
  //4.
  currentPosiHeight = pdfSatPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'vi.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                          '
    'Doing a field supervision as indicated', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.si34sat",
    "SPHM_DataSet.si34per",
    15, // remark start posi
    "SPHM_DataSet.si34remark",
  );
  //5.
  currentPosiHeight = pdfSatPerRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'v.',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                          '
    'Appropriate recommendations are made', //Ql1
    ' on supervision done', //ql2
    '', //ql3
    "SPHM_DataSet.si35sat",
    "SPHM_DataSet.si35per",
    15, // remark start posi
    "SPHM_DataSet.si35remark",
  );
}
