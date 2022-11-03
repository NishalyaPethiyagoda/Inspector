import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/intl.dart';

class UserSecureStorage {
  static final _storage = FlutterSecureStorage();
//
  String? keyVal;
  String? val;

  static Future writeData( keyVal, val ) async {
    // write function
    await _storage.write(key: keyVal, value: val);
  }

  //read
  static readData(valuegot) async {
    int Bool = 1;
    //
    valuegot = await _storage.read(key: "FingerPrintOfIvoryWalletApp");

    return Bool;
  }
}
