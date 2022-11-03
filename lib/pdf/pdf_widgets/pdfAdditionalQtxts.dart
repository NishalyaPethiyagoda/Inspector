import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/vari_lines_count.dart';

// double pdfAdditionalQtexts(
//   PdfDocument document,
//   PdfPage page,
//   PdfFont contentFont,
//   String additionalText,
//   double horiStartPosi,
//   double currentHeight,
  
// ) {

//   currentHeight = currentHeight + 10;
//   //
//   PdfTextElement(text: additionalText, font: contentFont).draw(
//       page: page, bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;

//   return currentHeight;
// }
