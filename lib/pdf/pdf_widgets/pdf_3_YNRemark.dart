import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/pdf/vari_lines_count.dart';
import 'package:project/pdf/spacingQs.dart';

double pdfYNRemark(
  double currentHeight,
  PdfDocument document,
  PdfPage page,
  PdfFont contentFont,
  double horiStartPosi,
  String Qnum,
  int QtypelineNum,
  String Qtypel1,
  String Qtypel2,
  String Qtypel3,
  double H_Q_Startposi,
  double H_Q_Endposi,
  int QlineNum,
  String Ql1,
  String Ql2,
  String Ql3,
  String YN_variName,
  int H_A_rem_startposi,
  String a_rmk_variName,
) {
//
//verticle height
  double textlineH = totLineHeightFunc(SPHM_Data_MAP[a_rmk_variName]);
  currentHeight = currentHeight + textlineH;
  double tempheight = currentHeight;
//

//num
  PdfTextElement(text: Qnum, font: contentFont).draw(
      page: page, bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
  horiStartPosi = horiStartPosi + 20;
  //type
  switch (QtypelineNum) {
    case 1:
      {
        PdfTextElement(text: Qtypel1, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
        tempheight = currentHeight + 18.0;
        break;
      }
    case 2:
      {
        PdfTextElement(text: Qtypel1, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
        tempheight = currentHeight + 18.0;
        PdfTextElement(text: Qtypel2, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, tempheight, 0, 0))!;
        break;
      }
    case 3:
      {
        PdfTextElement(text: Qtypel1, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
        tempheight = currentHeight + 18.0;
        PdfTextElement(text: Qtypel2, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, tempheight, 0, 0))!;
        tempheight = tempheight + 18.0;
        PdfTextElement(text: Qtypel3, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, tempheight, 0, 0))!;
        tempheight = tempheight + 18.0;
        break;
      }
    default:
      {
        break;
      }
  }
  horiStartPosi = horiStartPosi + H_Q_Startposi;
  //Q
  switch (QlineNum) {
    case 1:
      {
        PdfTextElement(text: Ql1, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
        tempheight = currentHeight + 18.0;
        break;
      }
    case 2:
      {
        PdfTextElement(text: Ql1, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
        tempheight = currentHeight + 18.0;
        PdfTextElement(text: Ql2, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, tempheight, 0, 0))!;
        break;
      }
    case 3:
      {
        PdfTextElement(text: Ql1, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
        tempheight = currentHeight + 18.0;
        PdfTextElement(text: Ql2, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, tempheight, 0, 0))!;
        tempheight = tempheight + 18.0;
        PdfTextElement(text: Ql3, font: contentFont).draw(
            page: page,
            bounds: Rect.fromLTWH(horiStartPosi, tempheight, 0, 0))!;
        tempheight = tempheight + 18.0;
        break;
      }
    default:
      {
        break;
      }
  }

  //final double size1 = contentFont.measureString(Q).width;
  horiStartPosi = horiStartPosi + H_Q_Endposi +3;
  //Qend colon
  PdfTextElement(text: ':', font: contentFont).draw(
      page: page, bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
  horiStartPosi = horiStartPosi + 5;
  //YN ans
  PdfTextElement(text: SPHM_Data_MAP[YN_variName]!, font: contentFont).draw(
      page: page, bounds: Rect.fromLTWH(horiStartPosi, currentHeight, 0, 0))!;
  horiStartPosi = horiStartPosi + H_A_rem_startposi;

  //remark
  PdfTextElement(text: SPHM_Data_MAP[a_rmk_variName]!, font: contentFont).draw(
      page: page,
      bounds: Rect.fromLTWH(horiStartPosi + 10, currentHeight, 0, 0))!;

  if (QlineNum == 2) {
    currentHeight = currentHeight + 18 * 1;
  } else if (QlineNum == 3) {
    currentHeight = currentHeight + 18 * 2;
  } else if (QlineNum == 4) {
    currentHeight = currentHeight + 18 * 3;
  } else if (QlineNum == 5) {
    currentHeight = currentHeight + 18 * 4;
  } else {
    currentHeight = currentHeight + 18 * 0;          //
  }
  return currentHeight;
}
