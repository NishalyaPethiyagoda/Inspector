import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/pdf_widgets/pdf_Q_&_A.dart';
import 'package:project/pdf/pdf_widgets/pdf_3_YNRemark.dart';
import 'package:project/pdf/pdf_widgets/pdfAdditionalQtxts.dart';

void page3(PdfDocument document, PdfFont contentFont) {
//
  final PdfPage page = document.pages.add(); //Add page to the PDF

  double currentPosiHeight = 0;
  double newPosiHeight = 0;

  //a
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'b.',
    1,
    'Diary',
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    'Pages are numbered', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.foB1YN",
    55, // remark start posi
    "SPHM_DataSet.foB1",
  );
  //2.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    '',
    1,
    '',
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    'Completed for the due date', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.foB2YN",
    55,
    "SPHM_DataSet.foB2",
  );
  //3.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    '',
    1,
    '',
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                       '
    'Tallies with the advance program',
    '',
    '',
    "SPHM_DataSet.foB3YN",
    55,
    "SPHM_DataSet.foB3",
  );
  //4.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'b.',
    0,
    '',
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    3, // Qlinenum
    'Number of houses visited and the ', //Ql1
    'services provided is mentioned during', //ql2
    'field visits', //ql3
    "SPHM_DataSet.foB4YN",
    55,
    "SPHM_DataSet.foB4",
  );
  //5.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    '',
    0,
    '',
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    'Tallies with RH - MIS Form B', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.foB5YN",
    55,
    "SPHM_DataSet.foB5",
  );
  //6.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    '',
    1,
    '',
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    3, // Qlinenum
    //                                       '
    'At the end of the month, diary and ',
    'supervision reports are forwarded to',
    'the MOH through PHNS',
    "SPHM_DataSet.foB6YN",
    55,
    "SPHM_DataSet.foB6",
  );
  //7.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    '',
    1,
    '',
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    3, // Qlinenum
    //                                       '
    'If deviated from the advance',
    'programme whether it is indicated in ',
    'the deviation book',
    "SPHM_DataSet.foB7YN",
    55,
    "SPHM_DataSet.foB7",
  );
//C
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'c',
    3, // Qtypelinenum
    'Registers ',
    'and', // Qtype
    'Records',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    3, // Qlinenum
    //                                       '
    'Seperate files are available for ', //Ql1
    'each PHM under care with regard to ', //Ql2
    'supervision', //Ql3
    "SPHM_DataSet.foC1YN",
    55,
    "SPHM_DataSet.foC1",
  );
  //2.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    '',
    0, // Qtypelinenum
    '',
    '', // Qtype
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                       '
    'Clinic supervision reports', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.foC2YN",
    55,
    "SPHM_DataSet.foC2",
  );
  //3.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    '',
    0, // Qtypelinenum
    '',
    '', // Qtype
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                       '
    'File for Form B', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.foC3YN",
    55,
    "SPHM_DataSet.foC3",
  );
  //4.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    '',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'Basic information on all PHMs', //Ql1
    'available', //Ql2
    '', //Ql3
    "SPHM_DataSet.foC4YN",
    55,
    "SPHM_DataSet.foC4",
  );
  //4.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    '',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'File containing supervision reports', //Ql1
    'given by higher officials', //Ql2
    '', //Ql3
    "SPHM_DataSet.foC5YN",
    55,
    "SPHM_DataSet.foC5",
  );
  //6.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    '',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                            '
    "Visitor's book", //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.foC6YN",
    55,
    "SPHM_DataSet.foC6",
  );
  //4.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    '',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    1, // Qlinenum
    //                                            '
    'schedule for field weighing is displayed', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.threC4YN",
    55,
    "SPHM_DataSet.threC4",
  );

// //
//   ///
// /////////////////////////////////////   section 5 ////////////////////////
//   ///
//   //
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  double topic2Posi = currentPosiHeight + 1.5;
  const topicleft = 5.0;

  page.graphics.drawString(
    '5. Action Plan of SPHM:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, topic2Posi, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 15;
  //
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'i.',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    0, //Q_hori_start posi
    265, //Q_hori_end posi
    3, // Qlinenum
    //                                            '
    'Has she identified problems in PHM areas under her', //Ql1
    'purvew and directed then=m to overcome problems ', //Ql2
    'through preparation of action plan', //Ql3
    "SPHM_DataSet.f1YN",
    17,
    "SPHM_DataSet.f1",
  );
  //2.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'ii.',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    0, //Q_hori_start posi
    265, //Q_hori_end posi
    1, // Qlinenum
    //                                            '
    'Has she identified targets for the year', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.f2YN",
    17,
    "SPHM_DataSet.f2YN",
  );
  //3.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'iii.',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    0, //Q_hori_start posi
    265, //Q_hori_end posi
    1, // Qlinenum
    //                                            '
    'Has she made an annual plan to achieve the goals', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.f3YN",
    17,
    "SPHM_DataSet.f3",
  );
  //4.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'iv.',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    0, //Q_hori_start posi
    265, //Q_hori_end posi
    1, // Qlinenum
    //                                            '
    'Has she made objectives to achieve targets', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.f4YN",
    17,
    "SPHM_DataSet.f4",
  );
  //5.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'v.',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    0, //Q_hori_start posi
    265, //Q_hori_end posi
    2, // Qlinenum
    //                                                     '
    'Has she prepared an action plan to overcome ', //Ql1
    'identified problems in the area', //Ql2
    '', //Ql3
    "SPHM_DataSet.f5YN",
    17,
    "SPHM_DataSet.f5",
  );
  //6.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'vi.',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    0, //Q_hori_start posi
    265, //Q_hori_end posi
    2, // Qlinenum
    //                                                     '
    'Has MOH/PHNS been made aware regarding the action ', //Ql1
    'plan', //Ql2
    '', //Ql3
    "SPHM_DataSet.f6YN",
    17,
    "SPHM_DataSet.f6",
  );
  //7.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'vii.',
    0, // Qtypelinenum
    '', // Qtype
    '',
    '',
    0, //Q_hori_start posi
    265, //Q_hori_end posi
    2, // Qlinenum
    //                                            '
    'Has she directed the PHM to implement the ', //Ql1
    'action plan', //Ql2
    '', //Ql3
    "SPHM_DataSet.f7YN",
    17,
    "SPHM_DataSet.f7",
  );
  // //8.
  // currentPosiHeight = pdfYNRemark(
  //   currentPosiHeight,
  //   document,
  //   page,
  //   contentFont,
  //   0, //horiStartPosi
  //   'viii.',
  //   0, // Qtypelinenum
  //   '', // Qtype
  //   '',
  //   '',
  //   0, //Q_hori_start posi
  //   265, //Q_hori_end posi
  //   2, // Qlinenum
  //   //                                            '
  //   'Has she assessed the progress by monitoring in ', //Ql1
  //   'each quarter', //Ql2
  //   '', //Ql3
  //   "SPHM_DataSet.f8YN",
  //   17,
  //   "SPHM_DataSet.f8",
  // );
  // //9.
  // currentPosiHeight = pdfYNRemark(
  //   currentPosiHeight,
  //   document,
  //   page,
  //   contentFont,
  //   0, //horiStartPosi
  //   'ix.',
  //   0, // Qtypelinenum
  //   '', // Qtype
  //   '',
  //   '',
  //   0, //Q_hori_start posi
  //   265, //Q_hori_end posi
  //   2, // Qlinenum
  //   //                                            '
  //   'Has she discussed it at monthly and local', //Ql1
  //   'conferences', //Ql2
  //   '', //Ql3
  //   "SPHM_DataSet.f9YN",
  //   17,
  //   "SPHM_DataSet.f9",
  // );
}
