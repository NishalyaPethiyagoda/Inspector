import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/pdf_widgets/pdf_createPDFText.dart';
import 'package:project/pdf/pdf_widgets/pdf_YNRemark.dart';


void page5(PdfDocument document, PdfFont contentFont) {
//
  final PdfPage page = document.pages.add(); //Add page to the PDF

  double currentPosiHeight = 0;
  double newPosiHeight = 0;

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
    '6.4 Follow up of the supervision:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, topic2Posi, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 15;

  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'i.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'Follow up supervisiions have been done ', //Ql1
    'to asses the progress', //ql2
    '', //ql3
    "SPHM_DataSet.si41YN",
    25, // remark start posi
    "SPHM_DataSet.si41",
  );
  //2.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'ii.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    "PHM's with low performance have been", //Ql1
    'correctly identiied', //ql2
    '', //ql3
    "SPHM_DataSet.si42YN",
    25, // remark start posi
    "SPHM_DataSet.si42",
  );
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'iii.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'Close attention has been given for those', //Ql1
    ' PHMs', //ql2
    '', //ql3
    "SPHM_DataSet.si43YN",
    25, // remark start posi
    "SPHM_DataSet.si43",
  );
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'vi.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    215, //Q_hori_end posi
    2, // Qlinenum
    //                                        '
    'Has she developed a mechanism to identify', //Ql1
    'the best performing officers', //ql2
    '', //ql3
    "SPHM_DataSet.si44YN",
    25, // remark start posi
    "SPHM_DataSet.si44",
  );

  currentPosiHeight = currentPosiHeight + 25;
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));

  page.graphics.drawString(
    '7. Maintenance of management information system (MIS):',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, currentPosiHeight, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 25;
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'i.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    215, //Q_hori_end posi
    3, // Qlinenum
    //                                       '
    'Has she taken steps to get the relevant  ', //Ql1
    'returns from the PHM on time i.e.H 524, H', //ql2
    '527, H 1200', //ql3
    "SPHM_DataSet.s1YN",
    25, // remark start posi
    "SPHM_DataSet.s1",
  );
  //2.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'ii.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'seperate register is maintained to ', //Ql1
    'record the recipts of returns', //ql2
    '', //ql3
    "SPHM_DataSet.s2YN",
    25, // remark start posi
    "SPHM_DataSet.s2",
  );
  //3.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'iii.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'Has she taken action to ensure the ', //Ql1
    'quality of data', //ql2
    '', //ql3
    "SPHM_DataSet.s3YN",
    25, // remark start posi
    "SPHM_DataSet.s3",
  );
  //4.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'vi.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    3, // Qlinenum
    //                                       '
    'Has she cross-checked the data with ', //Ql1
    'relevant records( diary, daily return and', //ql2
    'montly return)', //ql3
    "SPHM_DataSet.s4YN",
    25, // remark start posi
    "SPHM_DataSet.s4",
  );
  //5.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'v.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                       '
    'Is she able to analyze H 524', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.s5YN",
    25, // remark start posi
    "SPHM_DataSet.s5",
  );
  //6.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'vi.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'Is she competent in preparing accurate ', //Ql1
    'data in Form -B ', //ql2
    '', //ql3
    "SPHM_DataSet.s6YN",
    25, // remark start posi
    "SPHM_DataSet.s6",
  );
  //6.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'vii.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'Does she prepare the master sheet  ', //Ql1
    'accurately ', //ql2
    '', //ql3
    "SPHM_DataSet.s7YN",
    25, // remark start posi
    "SPHM_DataSet.s7YN",
  );
  ///////////////////////////////////////////// 8. 
  currentPosiHeight = currentPosiHeight + 25;
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
      
  page.graphics.drawString(
    '8. Duties where PHNS is unavailable:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, currentPosiHeight, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 25;
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'i.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    215, //Q_hori_end posi
    3, // Qlinenum
    //                                       '
    'Does SPHM has the ability to prepare H', //Ql1
    '509, EPI return and Family planning ', //ql2
    'concise return', //ql3
    "SPHM_DataSet.e1YN",
    25, // remark start posi
    "SPHM_DataSet.e1",
  );
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'ii.',
    0,
    '', '', '',
    0, //Q_hori_start posi
    215, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'Does she forward the quarterly returns ', //Ql1
    'to relevant places timely', //ql2
    '', //ql3
    "SPHM_DataSet.e2YN",
    25, // remark start posi
    "SPHM_DataSet.e2",
  );
}
