import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/pdf_widgets/pdf_createPDFText.dart';
import 'package:project/pdf/pdf_widgets/pdf_YNRemark.dart';

void page2(PdfDocument document, PdfFont contentFont) {
//
  final PdfPage page = document.pages.add(); //Add page to the PDF

  double currentPosiHeight = 0;
  double newPosiHeight = 0;
  //
  ///
/////////////////////////////////////   section 3 ////////////////////////
  ///
  //currentPosiHeight = currentPosiHeight + 25; //space new topic rectangle
  //
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  double topic2Posi = currentPosiHeight + 1.5;
  const topicleft = 5.0;

  page.graphics.drawString(
    '3. Maintenance of the Wall paper:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, topic2Posi, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 15; // rectangle + whitespace

  //a
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'a.',
    1,
    'Map',
    '',
    '',
    60, //Q_hori_start posi
    216, //Q_hori_end posi
    2, // Qlinenum
    'The approved map of the MOH area is ', //Ql1
    'dispalyed', //ql2
    '', //ql3
    "SPHM_DataSet.threA1YN",
    17,
    "SPHM_DataSet.threA1",
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
    216, //Q_hori_end posi
    1, // Qlinenum
    'Demarcations of the PHM areas are marked ', //Ql1
    '', //ql2
    '', //ql3
    "SPHM_DataSet.threA2YN",
    17,
    "SPHM_DataSet.threA2",
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
    216, //Q_hori_end posi
    1, // Qlinenum
    //                                       '
    'Offices and clinics are marked in each  ',
    'PHM area',
    '',
    "SPHM_DataSet.threA3YN", 17,
    "SPHM_DataSet.threA3",
  );
//b
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'b',
    2, // Qtypelinenum
    'Vital ',
    'Statistics', // Qtype
    '',
    60, //Q_hori_start posi
    216, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'Estimated values of vital statistics of', //Ql1
    'the MOH area is displayed', //Ql2
    '', //Ql3
    "SPHM_DataSet.threB1YN",
    17,
    "SPHM_DataSet.threB1",
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
    216, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'National, Provincial, District and MOH ', //Ql1
    'area vital statistics displayed in table', //Ql2
    '', //Ql3
    "SPHM_DataSet.threB2YN",
    17,
    "SPHM_DataSet.threB2",
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
    216, //Q_hori_end posi
    2, // Qlinenum
    //                                       '
    'Has she displayed achievements of vital', //Ql1
    'statistics by quater', //Ql2
    '', //Ql3
    "SPHM_DataSet.threB3YN",
    17,
    "SPHM_DataSet.threB3",
  );
  //c
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'c',
    2, // Qtypelinenum
    'Information', // Qtype
    'of clinics',
    '',
    60, //Q_hori_start posi
    216, //Q_hori_end posi
    1, // Qlinenum
    //                                       '
    'Details on her clinic area are displayed', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.threC1YN",
    17,
    "SPHM_DataSet.threC1",
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
    '', // Qtype
    '',
    '',
    60, //Q_hori_start posi
    216, //Q_hori_end posi
    1, // Qlinenum
    //                                       '
    'Annual clinic plan of the area displayed', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.threC2YN",
    17,
    "SPHM_DataSet.threC2",
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
    '', // Qtype
    '',
    '',
    60, //Q_hori_start posi
    216, //Q_hori_end posi
    1, // Qlinenum
    //                                            '
    'Clinic participation plan of PHM is available', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.threC3YN",
    17,
    "SPHM_DataSet.threC3",
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
    216, //Q_hori_end posi
    1, // Qlinenum
    //                                            '
    'schedule for field weighing is displayed', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.threC4YN",
    17,
    "SPHM_DataSet.threC4",
  );
  //5.
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
    216, //Q_hori_end posi
    2, // Qlinenum
    //                                            '
    'Specialized and special clinics in hospitals', //Ql1
    'are displayed', //Ql2
    '', //Ql3
    "SPHM_DataSet.threC5YN",
    17,
    "SPHM_DataSet.threC5",
  );
//d
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'd',
    2, // Qtypelinenum
    'Advanced', // Qtype
    'program',
    '',
    60, //Q_hori_start posi
    216, //Q_hori_end posi
    1, // Qlinenum
    //                                            '
    'approved advanced program is displayed', //Ql1
    '', //Ql2
    '', //Ql3
    "SPHM_DataSet.threD1YN",
    17,
    "SPHM_DataSet.threD1",
  );
  // //2.
  // currentPosiHeight = pdfYNRemark(
  //   currentPosiHeight,
  //   document,
  //   page,
  //   contentFont,
  //   0, //horiStartPosi
  //   '',
  //   0, // Qtypelinenum
  //   '', // Qtype
  //   '',
  //   '',
  //   60, //Q_hori_start posi
  //   214, //Q_hori_end posi
  //   1, // Qlinenum
  //   //                                            '
  //   'It is fowarded to the MOH through PHNS', //Ql1
  //   '', //Ql2
  //   '', //Ql3
  //   "SPHM_DataSet.threD2YN",
  //   "SPHM_DataSet.threD2",
  // );
  //3.
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
    216, //Q_hori_end posi
    2, // Qlinenum
    //                                            '
    'It is planned according to the supervision', //Ql1
    'roster', //Ql2
    '', //Ql3
    "SPHM_DataSet.threD3YN",
    17,
    "SPHM_DataSet.threD3",
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
    216, //Q_hori_end posi
    3, // Qlinenum
    //                                            '
    'Specific areas such as Office, Field, Clinics', //Ql1
    '& Field Weighing posts of Supervision ', //Ql2
    'correctly', //Ql3
    "SPHM_DataSet.threD4YN",
    17,
    "SPHM_DataSet.threD4",
  );
  //5.
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
    216, //Q_hori_end posi
    3, // Qlinenum
    //                                            '
    'Dates of the monthly conferences, local', //Ql1
    'conferences & in service trainings are ', //Ql2
    'mentioned', //Ql3
    "SPHM_DataSet.threD5YN",
    17,
    "SPHM_DataSet.threD5",
  );

  //e
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'e',
    1, // Qtypelinenum
    'Charts', // Qtype
    '',
    '',
    60, //Q_hori_start posi
    216, //Q_hori_end posi
    3, // Qlinenum
    //                                            '
    'Details on population, number of houses, ', //Ql1
    'number of eligible families are updated', //Ql2
    'according to PHM areas', //Ql3
    "SPHM_DataSet.threE1YN",
    17,
    "SPHM_DataSet.threE1",
  );
  //f
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0, //horiStartPosi
    'f',
    1, // Qtypelinenum
    'Graphs', // Qtype
    '',
    '',
    60, //Q_hori_start posi
    216, //Q_hori_end posi
    3, // Qlinenum
    //                                            '
    'Antenatal Care, pregnancy outcomes,postnatal', //Ql1
    'number of eligible families are updated', //Ql2
    'care, family planing of past 2 years', //Ql3
    "SPHM_DataSet.threF1YN",
    17,
    "SPHM_DataSet.threF1",
  );
  //
  ///
/////////////////////////////////////   section 4 ////////////////////////
  ///
  //currentPosiHeight = currentPosiHeight + 25; //space new topic rectangle
  //
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //

  page.graphics.drawString(
    '4. Maintenance of registers, records and returns in the office:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, currentPosiHeight, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 15; // rectangle + whitespace

  //a
  //1.
  currentPosiHeight = pdfYNRemark(
    currentPosiHeight,
    document,
    page,
    contentFont,
    0,
    'a.',
    2,
    'list of',
    'Duties',
    '',
    60, //Q_hori_start posi
    214, //Q_hori_end posi
    3, // Qlinenum
    //                                            '
    'The duty list of following mentioned officers', //Ql1
    'are available   - SPHM', //ql2
    '                      - PHM', //ql3
    "SPHM_DataSet.foA1YN",
    17,
    "SPHM_DataSet.foA1",
  );
}
