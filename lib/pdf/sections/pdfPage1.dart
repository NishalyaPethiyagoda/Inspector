import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/pdf_widgets/pdf_Q_&_A.dart';
import 'package:project/pdf/pdf_widgets/pdf_3_YNRemark.dart';

void page1(PdfDocument document, PdfFont contentFont) {
//
  final PdfPage page = document.pages.add(); //Add page to the PDF

  double currentPosiHeight = 0;
  double newPosiHeight = 0;
  //
  Size topicLength = contentFont
      .measureString('Supervision of Supervising Public Health Midwife');
  const double topic1Posi = 4;
  double topicCenter = (page.size.width - 60 - 60 - topicLength.width) / 4;

  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, 0, page.size.width - 60, 30));
  page.graphics.drawString(
    'Supervision of Supervising Public Health Midwife',
    PdfStandardFont(PdfFontFamily.timesRoman, 18),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicCenter, topic1Posi, 500, 50),
  );

  currentPosiHeight = 30; // rectangle + whitespace
//1
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      0,
      'Name of the supervising officer   :-',
      'SPHM_DataSet.supervisorName');
  currentPosiHeight = newPosiHeight;
//2
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      0,
      'Designation of the supervising officer :-',
      'SPHM_DataSet.s_designation');
  currentPosiHeight = newPosiHeight;
//3
  newPosiHeight = createPDFTextEle(currentPosiHeight, document, page,
      contentFont, 0, 'Date of Supervision :-', 'SPHM_DataSet.date');
  currentPosiHeight = newPosiHeight;
//4
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      0,
      'Time started Supervision :-',
      'SPHM_DataSet.s_started_time');
  currentPosiHeight = newPosiHeight;
//5
  newPosiHeight = createPDFTextEle(currentPosiHeight, document, page,
      contentFont, 0, 'Time ended :-', 'SPHM_DataSet.s_ended_time');
  currentPosiHeight = newPosiHeight;
//6                                                         /////////////////////////////////
  newPosiHeight = createPDFTextEle(currentPosiHeight, document, page,
      contentFont, 0, 'MOH area :-', 'SPHM_DataSet.MOH_area');
  currentPosiHeight = newPosiHeight;
//7
  newPosiHeight = createPDFTextEle(currentPosiHeight, document, page,
      contentFont, 0, 'Name of the SPHM :-', 'SPHM_DataSet.SPHM_name');
  currentPosiHeight = newPosiHeight;
//8
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      0,
      'Was the SPHM informed regarding the supervision :-',
      'SPHM_DataSet.SPHM_informed_o_not');
  currentPosiHeight = newPosiHeight;

  ///
/////////////////////////////////////     basic infor section  ////////////////////////
  ///
  ///
  currentPosiHeight = currentPosiHeight + 25; //space new topic rectangle
  //
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  double topic2Posi = currentPosiHeight + 1.5;
  const topicleft = 5.0;

  page.graphics.drawString(
    '1. Basic Information:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, topic2Posi, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 15; // rectangle + whitespace
//a
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      40,
      'a.  Population                               :',
      'SPHM_DataSet.population');
  currentPosiHeight = newPosiHeight;
//b
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      40,
      'b.  Number of PHMs under supervision     :',
      'SPHM_DataSet.NoOf_PHM_UnderSupervision');
  currentPosiHeight = newPosiHeight;
//c
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      40,
      'c.  Date of first appointment                  :',
      'SPHM_DataSet.dateFirstAppointment');
  currentPosiHeight = newPosiHeight;
//d
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      40,
      'd.  Date of appointment to this area     :',
      'SPHM_DataSet.dateAppointmentToArea');
  currentPosiHeight = newPosiHeight;
//e
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      40,
      'e.  Duration of service as a SPHM        :',
      'SPHM_DataSet.durationOfServiceAs_SPHM');
  currentPosiHeight = newPosiHeight;
//f
  currentPosiHeight = currentPosiHeight + 16;
  PdfTextElement(text: 'f.  Transport facilities:', font: contentFont)
      .draw(page: page, bounds: Rect.fromLTWH(40, currentPosiHeight, 0, 0))!;
  //currentPosiHeight = currentPosiHeight + 16;
  //
  //i.
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      50,
      'i.  Is SPHM provided with tranmsport facilities :',
      'SPHM_DataSet.SPHM_providedWithTransport');
  currentPosiHeight = newPosiHeight;
  //
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      180,
      '(Scooter/ Moped)  :',
      'SPHM_DataSet.SPHM_TransportMethod');
  currentPosiHeight = newPosiHeight;
  //ii.
  newPosiHeight = createPDFTextEle(currentPosiHeight, document, page,
      contentFont, 50, 'ii.  Does she use it:', 'SPHM_DataSet.DoesSPHM_UseIt');
  currentPosiHeight = newPosiHeight;
  //iii.
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      50,
      'iii.  If not, reason for not using the transport facility:',
      'SPHM_DataSet.ReasonFrNtUsingTransFacility');
  currentPosiHeight = newPosiHeight;
//g
  newPosiHeight = createPDFTextEle(
      currentPosiHeight,
      document,
      page,
      contentFont,
      40,
      'g.  Is the SPHM in complete uniform     :',
      'SPHM_DataSet.SPHM_inFullUniform');
  currentPosiHeight = newPosiHeight;

  ///
/////////////////////////////////////     general office conditions  ////////////////////////
  ///
  ///
  currentPosiHeight = currentPosiHeight + 25; //space new topic rectangle
  //
  page.graphics.drawRectangle(
      brush: PdfSolidBrush(PdfColor(51, 190, 615)),
      bounds: Rect.fromLTWH(0, currentPosiHeight, page.size.width - 60, 20));
  //
  double topic3Posi = currentPosiHeight + 1.5;

  page.graphics.drawString(
    '2. General Office Conditions:',
    PdfStandardFont(PdfFontFamily.timesRoman, 16),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: Rect.fromLTWH(topicleft, topic3Posi, 500, 50),
  );

  currentPosiHeight = currentPosiHeight + 20; // rectangle + whitespace

  //2.1
  newPosiHeight = pdfYNRemark(
      currentPosiHeight,
      document,
      page,
      contentFont,
      0,
      'i.',
      1,
      '',
      '',
      '',
      0, //Q_hori_start posi
      200, //Q_hori_end posi
      1, // Qlinenum
      'Cleanliness of the office is sastisfactory ', //Ql1
      '', //ql2
      '', //ql3
      'SPHM_DataSet.cleanlinessSatisfactoryYesNo',
      17,
      //////////////////////
      'SPHM_DataSet.cleanlinessSatisfactory');
  currentPosiHeight = currentPosiHeight + 12;
// //2.2
  newPosiHeight = pdfYNRemark(
      currentPosiHeight,
      document,
      page,
      contentFont,
      0,
      'ii.',
      1,
      '',
      '',
      '',
      0, //Q_hori_start posi
      200, //Q_hori_end posi
      1, // Qlinenum
      'Office is well organized ', //Ql1
      '', //ql2
      '', //ql3
      'SPHM_DataSet.officeWellOrganizedYesNo',
      17,
      //////////////////////
      'SPHM_DataSet.officeWellOrganized');
}
