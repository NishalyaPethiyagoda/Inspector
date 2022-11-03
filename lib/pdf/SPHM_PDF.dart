import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import 'package:project/pdf/sections/pdfPage1.dart';
import 'package:project/pdf/sections/pdfPage2.dart';
import 'package:project/pdf/sections/pdfPage3.dart';
import 'package:project/pdf/sections/pdfPage4.dart';
import 'package:project/pdf/sections/pdfPage5.dart';
import 'package:project/pdf/sections/pdfPage6.dart';
Future<void> createPDF() async {
  //Create a new PDF document
  PdfDocument document = PdfDocument();

  document.pageSettings.size = PdfPageSize.a4;
  document.pageSettings.orientation = PdfPageOrientation.portrait;
  document.compressionLevel = PdfCompressionLevel.best;
  //Set margin for all the pages
  document.pageSettings.margins.left = 60;
  document.pageSettings.margins.right = 60;
  document.pageSettings.margins.top = 70;
  document.pageSettings.margins.bottom = 60;

  //define fontstyle
  final PdfFont contentFont = PdfStandardFont(PdfFontFamily.timesRoman, 12);

  page1(document, contentFont);
  page2(document, contentFont);
  page3(document, contentFont);
  page4(document, contentFont);
  page5(document, contentFont);
  page6(document, contentFont);
  //double y = 0;
  // for (int i = 0; i < 700; i = i + 16) {
  //   page.graphics.drawRectangle(
  //       bounds: Rect.fromLTWH(0, y, 200, 16),
  //       pen: PdfPen(PdfColor(142, 170, 219)));
  //   y = y + 16;
  // }

  //Save the document
  List<int> bytes = document.save();
  //Dispose the document
  document.dispose();

  saveAndLaunchPDF(bytes);
}

//

Future<void> saveAndLaunchPDF(List<int> bytes) async {
  //Get external storage directory
  final directory = await getApplicationDocumentsDirectory();

  //Get directory path
  final path = directory.path;

  //Create an empty file to write PDF data
  File file = File('$path/SPHM Inspection Report.pdf');

  //Write PDF data
  await file.writeAsBytes(bytes, flush: true);

  //Open the PDF document in mobile
  OpenFile.open('$path/SPHM Inspection Report.pdf');
}
