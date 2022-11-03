import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import '../../../main.dart';

class SPHMSecureStorage {
  static final _storage1 = FlutterSecureStorage();
  static final _storage2 = FlutterSecureStorage();

  static Future checkFirstTimeWrite() async {
    await _storage1.write(
        key: "CheckFirstTimeIvoryWalletMobileApp", value: "true");
  }

  static Future setAll() async {
  //  await _storage1.write(key: key, value: value)
    await _storage1.write(
        key: "SPHM_DataSet.supervisorName", value: SPHM_DataSet.supervisorName);
    await _storage1.write(
        key: "SPHM_DataSet.s_designation", value: SPHM_DataSet.s_designation);
    //
    await _storage1.write(
        key: "SPHM_DataSet.ReasonFrNtUsingTransFacility",
        value: SPHM_DataSet.ReasonFrNtUsingTransFacility);
    return 0;
  }

  //
  static Getall() async {
    int Bool = 1;
     String? zero1 =
        await _storage1.read(key: "SPHM_DataSet.supervisorName");
     String? zero2=
        await _storage1.read(key: "SPHM_DataSet.s_designation");
    String? one9 = await _storage1.read(
        key: "SPHM_DataSet.ReasonFrNtUsingTransFacility");

  
    if (zero1 != null) {
      SPHM_DataSet.supervisorName = zero1 ;
    }
    if (zero2 != null) {
      SPHM_DataSet.s_designation = zero2 ;
    }
    if (one9 != null) {
      SPHM_DataSet.ReasonFrNtUsingTransFacility = one9 ;
    }
    return Bool;
  }

}
