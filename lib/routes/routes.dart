import 'package:flutter/material.dart';
import 'package:js/js.dart';
import 'package:project/app_tree//screens/loading.dart';
import 'package:project/app_tree//screens/login.dart';
import 'package:project/app_tree//screens/register.dart';
import 'package:project/app_tree//screens/home.dart';
import'package:project/app_tree/screens/profile_sc.dart';
import 'package:project/app_tree//home/SPHMi/SPHMidwifeSec.dart';
import 'package:project/app_tree/home/SPHMi/0.dart';
import 'package:project/app_tree/home/SPHMi/1.dart';
import 'package:project/app_tree/home/SPHMi/2.dart';
import 'package:project/app_tree/home/SPHMi/3.dart';
import 'package:project/app_tree/home/SPHMi/4.dart';
import 'package:project/app_tree/home/SPHMi/5.dart';
import 'package:project/app_tree/home/SPHMi/6.dart';
import 'package:project/app_tree/home/SPHMi/7.dart';
import 'package:project/app_tree/home/SPHMi/8.dart';
import 'package:project/app_tree/home/SPHMi/9.dart';
import 'package:project/app_tree/home/SPHMi/10.dart';
import 'package:project/app_tree/home/SPHMi/11.dart';
import 'package:project/app_tree/home/SPHMi/12.dart';

class AppRoutes {
  AppRoutes._();

  static const String firstRun = '/auth-first-run';
  static const String normalRun = '/auth-normal-run';
  static const String authLoading = '/auth-loading';
  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';
  static const String authHome = '/auth-Home';
  static const String authSPHMidwifeSectionScreen = 'auth-SPHMidwifeSecScr';

  static Map<String, WidgetBuilder> define() {
    return {
      firstRun: (context) => ProfilePage(),
      normalRun: (context) => Login(),
      authLoading: (context) => LoadingScr(),
      authLogin: (context) => Login(),
      authRegister: (context) => Register(),
      authHome: (context) => Home(),
      authSPHMidwifeSectionScreen: (context) => Sections(),
      'SPHM_0': (context) => SPHMSupervisorInfo(),
      'SPHM_1': (context) => SPHM_basic_info(),
      'SPHM_2': (context) => SPHM_2_generalOfficeConditions(),
      'SPHM_3': (context) => SPHM_3_Maintanence_WallPaper(),
      'SPHM_4': (context) => SPHM_4_Mainta_Registers(),
      'SPHM_5': (context) => SPHM_5_actionPlan(),
      'SPHM_6': (context) => SPHM_6_supervisionActivity(),
      'SPHM_7': (context) => SPHM_7_MaintenanceOfMIS(),
      'SPHM_8': (context) => SPHM_8_Duties_PHNS_unavail(),
      'SPHM_9': (context) => SPHM_9_specialServices(),
      'SPHM_10': (context) => SPHM_10_StrongWeakPoints(),
      'SPHM_11': (context) => SPHM_11_DevelopPlan(),
      'SPHM_12': (context) => SPHM_12_sign(),
    };
  }
}
