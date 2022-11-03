import 'package:flutter/material.dart';

//defaults
String yesNo = '';
String num = '';
String percen = '';
String assign_to = '';

class SPHM_Data {
  //
  //0.
  //
  String supervisorName = '';
  String s_designation = '';
  String date = '';
  String s_started_time = '';
  String s_ended_time = '';
  String MOH_area = '';
  String SPHM_name = '';
  String supervision_objective = '';
  String SPHM_informed_o_not = '';
//
// 1.
  String population = '';
  String NoOf_PHM_UnderSupervision = '';
  String dateFirstAppointment = '';
  String dateAppointmentToArea = '';
  String durationOfServiceAs_SPHM = '';
  String SPHM_providedWithTransport = '';
  String SPHM_TransportMethod = '';
  String DoesSPHM_UseIt = '';
  String ReasonFrNtUsingTransFacility = '';
  String SPHM_inFullUniform = '';
//
// 2.
  String cleanlinessSatisfactoryYesNo = '';
  String cleanlinessSatisfactory = '';
  String officeWellOrganizedYesNo = '';
  String officeWellOrganized = '';
//
// 3.
  String threA1YN = '';
  String threA1 = '';
  String threA2YN = '';
  String threA2 = '';
  String threA3YN = '';
  String threA3 = '';
  String threB1YN = '';
  String threB1 = '';
  String threB2YN = '';
  String threB2 = '';
  String threB3YN = '';
  String threB3 = '';
  String threC1YN = '';
  String threC1 = '';
  String threC2YN = '';
  String threC2 = '';
  String threC3YN = '';
  String threC3 = '';
  String threC4YN = '';
  String threC4 = '';
  String threC5YN = '';
  String threC5 = '';
  String threD1YN = '';
  String threD1 = '';
  String threD2YN = '';
  String threD2 = '';
  String threD3YN = '';
  String threD3 = '';
  String threD4YN = '';
  String threD4 = '';
  String threD5YN = '';
  String threD5 = '';
  String threE1YN = '';
  String threE1 = '';
  String threF1YN = '';
  String threF1 = '';
//
// 4.
  String foA1YN = '';
  String foA1 = '';
  String foB1YN = ''; //
  String foB1 = '';
  String foB2YN = '';
  String foB2 = '';
  String foB3YN = '';
  String foB3 = '';
  String foB4YN = '';
  String foB4 = '';
  String foB5YN = '';
  String foB5 = '';
  String foB6YN = '';
  String foB6 = '';
  String foB7YN = '';
  String foB7 = '';
  String foC1YN = '';
  String foC1 = '';
  String foC2YN = '';
  String foC2 = '';
  String foC3YN = '';
  String foC3 = '';
  String foC4YN = '';
  String foC4 = '';
  String foC5YN = '';
  String foC5 = '';
  String foC6YN = '';
  String foC6 = '';
//
// 5.
  String f1YN = '';
  String f1 = '';
  String f2YN = '';
  String f2 = '';
  String f3YN = '';
  String f3 = '';
  String f4YN = '';
  String f4 = '';
  String f5YN = '';
  String f5 = '';
  String f6YN = '';
  String f6 = '';
  String f7YN = '';
  String f7 = ''; //
  String f8YN = '';
  String f8 = '';
  String f9YN = '';
  String f9 = '';
//
//6.
  String si1num = '';
  String si1per = '';
  String si1remark = '';
  String si2num = '';
  String si2per = '';
  String si2remark = '';
  String si3num = '';
  String si3per = '';
  String si3remark = '';
  String si4num = '';
  String si4per = '';
  String si4remark = '';
//
// 6.1
  String si11num = '';
  String si11remark = '';
  String si12num = '';
  String si12remark = '';
  String si13num = '';
  String si13remark = '';
  String si14num = '';
  String si14remark = '';
  String si15num = '';
  String si15remark = '';
//
// 6.2
  String si21num = '';
  String si21per = '';
  String si21remark = '';
  String si22num = '';
  String si22per = '';
  String si22remark = '';
  String si23num = '';
  String si23per = '';
  String si23remark = '';
//
// 6.3
  String si3numReports = '0';
  String si31sat = '';
  String si31per = '';
  String si31remark = '';
  String si32sat = '';
  String si32per = '';
  String si32remark = '';
  String si33sat = '';
  String si33per = '';
  String si33remark = '';
  String si34sat = '';
  String si34per = '';
  String si34remark = '';
  String si35sat = '';
  String si35per = '';
  String si35remark = '';
//
// 6.4
  String si41YN = '';
  String si41 = '';
  String si42YN = '';
  String si42 = '';
  String si43YN = '';
  String si43 = '';
  String si44YN = '';
  String si44 = '';
//
// 7
  String s1YN = '';
  String s1 = '';
  String s2YN = '';
  String s2 = '';
  String s3YN = '';
  String s3 = '';
  String s4YN = '';
  String s4 = '';
  String s5YN = '';
  String s5 = '';
  String s6YN = '';
  String s6 = '';
  String s7YN = '';
  String s7 = '';
//
// 8
  String e1YN = '';
  String e1 = '';
  String e2YN = '';
  String e2 = '';
//
// 9
  String n1a = '';
  String n1b = '';
  String n2 = '';
  String n3 = '';
  String n4 = '';
  String n5 = '';
//
// 10
  String t1 = '';
  String t2 = '';
//
// 11
  String el1 = '';
  String el2 = '';
  String el3 = '';
  String el4 = '';
  String el5 = '';
  String el6 = '';
//
//12
  String designation1 = '';
}

SPHM_Data SPHM_DataSet = SPHM_Data();

Map<String, dynamic> SPHM_Data_MAP = {
  // this dictionary is used to search and assign its value when needed
  // to do that say-> SPHM_Data_MAP[create a string variable and generate the key names somehow] = needed value;
  // refer onchanged() of textfileds in 'textfield' widgets
  "SPHM_DataSet.supervisorName": SPHM_DataSet.supervisorName,
  "SPHM_DataSet.s_designation": SPHM_DataSet.s_designation,
  "SPHM_DataSet.date": SPHM_DataSet.date,
  "SPHM_DataSet.s_started_time": SPHM_DataSet.s_started_time,
  "SPHM_DataSet.s_ended_time": SPHM_DataSet.s_ended_time,
  "SPHM_DataSet.MOH_area": SPHM_DataSet.MOH_area,
  "SPHM_DataSet.SPHM_name": SPHM_DataSet.SPHM_name,
  "SPHM_DataSet.supervision_objective": SPHM_DataSet.supervision_objective,
  "SPHM_DataSet.SPHM_informed_o_not": SPHM_DataSet.SPHM_informed_o_not,
// 1.
  "SPHM_DataSet.population": SPHM_DataSet.population,
  "SPHM_DataSet.NoOf_PHM_UnderSupervision":
      SPHM_DataSet.NoOf_PHM_UnderSupervision,
  "SPHM_DataSet.dateFirstAppointment": SPHM_DataSet.dateFirstAppointment,
  "SPHM_DataSet.dateAppointmentToArea": SPHM_DataSet.dateAppointmentToArea,
  "SPHM_DataSet.durationOfServiceAs_SPHM":
      SPHM_DataSet.durationOfServiceAs_SPHM,
  "SPHM_DataSet.SPHM_providedWithTransport":
      SPHM_DataSet.SPHM_providedWithTransport,
  "SPHM_DataSet.SPHM_TransportMethod": SPHM_DataSet.SPHM_TransportMethod,
  "SPHM_DataSet.DoesSPHM_UseIt": SPHM_DataSet.DoesSPHM_UseIt,
  "SPHM_DataSet.ReasonFrNtUsingTransFacility":
      SPHM_DataSet.ReasonFrNtUsingTransFacility,
  "SPHM_DataSet.SPHM_inFullUniform": SPHM_DataSet.SPHM_inFullUniform,
// 2.
  "SPHM_DataSet.cleanlinessSatisfactoryYesNo":
      SPHM_DataSet.cleanlinessSatisfactoryYesNo,
  "SPHM_DataSet.cleanlinessSatisfactory": SPHM_DataSet.cleanlinessSatisfactory,
  "SPHM_DataSet.officeWellOrganizedYesNo":
      SPHM_DataSet.officeWellOrganizedYesNo,
  "SPHM_DataSet.officeWellOrganized": SPHM_DataSet.officeWellOrganized,
// 3.
  "SPHM_DataSet.threA1YN": SPHM_DataSet.threA1YN,
  "SPHM_DataSet.threA1": SPHM_DataSet.threA1,
  "SPHM_DataSet.threA2YN": SPHM_DataSet.threA2YN,
  "SPHM_DataSet.threA2": SPHM_DataSet.threA2,
  "SPHM_DataSet.threA3YN": SPHM_DataSet.threA3YN,
  "SPHM_DataSet.threA3": SPHM_DataSet.threA3,
  "SPHM_DataSet.threB1YN": SPHM_DataSet.threB1YN,
  "SPHM_DataSet.threB1": SPHM_DataSet.threB1,
  "SPHM_DataSet.threB2YN": SPHM_DataSet.threB2YN,
  "SPHM_DataSet.threB2": SPHM_DataSet.threB2,
  "SPHM_DataSet.threB3YN": SPHM_DataSet.threB3YN,
  "SPHM_DataSet.threB3": SPHM_DataSet.threB3,
  "SPHM_DataSet.threC1YN": SPHM_DataSet.threC1YN,
  "SPHM_DataSet.threC1": SPHM_DataSet.threC1,
  "SPHM_DataSet.threC2YN": SPHM_DataSet.threC2YN,
  "SPHM_DataSet.threC2": SPHM_DataSet.threC2,
  "SPHM_DataSet.threC3YN": SPHM_DataSet.threC3YN,
  "SPHM_DataSet.threC3": SPHM_DataSet.threC3,
  "SPHM_DataSet.threC4YN": SPHM_DataSet.threC4YN,
  "SPHM_DataSet.threC4": SPHM_DataSet.threC4,
  "SPHM_DataSet.threC5YN": SPHM_DataSet.threC5YN,
  "SPHM_DataSet.threC5": SPHM_DataSet.threC5,
  "SPHM_DataSet.threD1YN": SPHM_DataSet.threD1YN,
  "SPHM_DataSet.threD1": SPHM_DataSet.threD1,
  "SPHM_DataSet.threD2YN": SPHM_DataSet.threD2YN,
  "SPHM_DataSet.threD2Y": SPHM_DataSet.threD2,
  "SPHM_DataSet.threD3YN": SPHM_DataSet.threD3YN,
  "SPHM_DataSet.threD3": SPHM_DataSet.threD3,
  "SPHM_DataSet.threD4YN": SPHM_DataSet.threD4YN,
  "SPHM_DataSet.threD4": SPHM_DataSet.threD4,
  "SPHM_DataSet.threD5YN": SPHM_DataSet.threD5YN,
  "SPHM_DataSet.threD5": SPHM_DataSet.threD5,
  "SPHM_DataSet.threE1YN": SPHM_DataSet.threE1YN,
  "SPHM_DataSet.threE1": SPHM_DataSet.threE1,
  "SPHM_DataSet.threF1YN": SPHM_DataSet.threF1YN,
  "SPHM_DataSet.threF1": SPHM_DataSet.threF1,
// 4.
  "SPHM_DataSet.foA1YN": SPHM_DataSet.foA1YN,
  "SPHM_DataSet.foA1": SPHM_DataSet.foA1,
  "SPHM_DataSet.foB1YN": SPHM_DataSet.foB1YN,
  "SPHM_DataSet.foB1": SPHM_DataSet.foB1,
  "SPHM_DataSet.foB2YN": SPHM_DataSet.foB2YN,
  "SPHM_DataSet.foB2": SPHM_DataSet.foB2,
  "SPHM_DataSet.foB3YN": SPHM_DataSet.foB3YN,
  "SPHM_DataSet.foB3": SPHM_DataSet.foB3,
  "SPHM_DataSet.foB4YN": SPHM_DataSet.foB4YN,
  "SPHM_DataSet.foB4": SPHM_DataSet.foB4,
  "SPHM_DataSet.foB5YN": SPHM_DataSet.foB5YN,
  "SPHM_DataSet.foB5": SPHM_DataSet.foB5,
  "SPHM_DataSet.foB6YN": SPHM_DataSet.foB6YN,
  "SPHM_DataSet.foB6": SPHM_DataSet.foB6,
  "SPHM_DataSet.foB7YN": SPHM_DataSet.foB7YN,
  "SPHM_DataSet.foB7": SPHM_DataSet.foB7,
  "SPHM_DataSet.foC1YN": SPHM_DataSet.foC1YN,
  "SPHM_DataSet.foC1": SPHM_DataSet.foC1,
  "SPHM_DataSet.foC2YN": SPHM_DataSet.foC2YN,
  "SPHM_DataSet.foC2": SPHM_DataSet.foC2,
  "SPHM_DataSet.foC3YN": SPHM_DataSet.foC3YN,
  "SPHM_DataSet.foC3": SPHM_DataSet.foC3,
  "SPHM_DataSet.foC4YN": SPHM_DataSet.foC4YN,
  "SPHM_DataSet.foC4": SPHM_DataSet.foC4,
  "SPHM_DataSet.foC5YN": SPHM_DataSet.foC5YN,
  "SPHM_DataSet.foC5": SPHM_DataSet.foC5,
  "SPHM_DataSet.foC6YN": SPHM_DataSet.foC6YN,
  "SPHM_DataSet.foC6": SPHM_DataSet.foC6,
// 5.
  "SPHM_DataSet.f1YN": SPHM_DataSet.f1YN,
  "SPHM_DataSet.f1": SPHM_DataSet.f1,
  "SPHM_DataSet.f2YN": SPHM_DataSet.f2YN,
  "SPHM_DataSet.f2": SPHM_DataSet.f2,
  "SPHM_DataSet.f3YN": SPHM_DataSet.f3YN,
  "SPHM_DataSet.f3": SPHM_DataSet.f3,
  "SPHM_DataSet.f4YN": SPHM_DataSet.f4YN,
  "SPHM_DataSet.f4": SPHM_DataSet.f4,
  "SPHM_DataSet.f5YN": SPHM_DataSet.f5YN,
  "SPHM_DataSet.f5": SPHM_DataSet.f5,
  "SPHM_DataSet.f6YN": SPHM_DataSet.f6YN,
  "SPHM_DataSet.f6": SPHM_DataSet.f6,
  "SPHM_DataSet.f7YN": SPHM_DataSet.f7YN,
  "SPHM_DataSet.f7": SPHM_DataSet.f7,
  "SPHM_DataSet.f8YN": SPHM_DataSet.f8YN,
  "SPHM_DataSet.f8": SPHM_DataSet.f8,
  "SPHM_DataSet.f9YN": SPHM_DataSet.f9YN,
  "SPHM_DataSet.f9": SPHM_DataSet.f9,
  //6.
  "SPHM_DataSet.si1num": SPHM_DataSet.si1num,
  "SPHM_DataSet.si1per": SPHM_DataSet.si1per,
  "SPHM_DataSet.si1remark": SPHM_DataSet.si1remark,
  "SPHM_DataSet.si2num": SPHM_DataSet.si2num,
  "SPHM_DataSet.si2per": SPHM_DataSet.si2per,
  "SPHM_DataSet.si2remark": SPHM_DataSet.si2remark,
  "SPHM_DataSet.si3num": SPHM_DataSet.si3num,
  "SPHM_DataSet.si3per": SPHM_DataSet.si3per,
  "SPHM_DataSet.si3remark": SPHM_DataSet.si3remark,
  "SPHM_DataSet.si4num": SPHM_DataSet.si4num,
  "SPHM_DataSet.si4per": SPHM_DataSet.si4per,
  "SPHM_DataSet.si4remark": SPHM_DataSet.si4remark,
//6.1
  "SPHM_DataSet.si11num": SPHM_DataSet.si11num,
  "SPHM_DataSet.si11remark": SPHM_DataSet.si11remark,
  "SPHM_DataSet.si12num": SPHM_DataSet.si12num,
  "SPHM_DataSet.si12remark": SPHM_DataSet.si12remark,
  "SPHM_DataSet.si13num": SPHM_DataSet.si13num,
  "SPHM_DataSet.si13remark": SPHM_DataSet.si13remark,
  "SPHM_DataSet.si14num": SPHM_DataSet.si14num,
  "SPHM_DataSet.si14remark": SPHM_DataSet.si14remark,
  "SPHM_DataSet.si15num": SPHM_DataSet.si15num,
  "SPHM_DataSet.si15remark": SPHM_DataSet.si15remark,
//6.2
  "SPHM_DataSet.si21num": SPHM_DataSet.si21num,
  "SPHM_DataSet.si21per": SPHM_DataSet.si21per,
  "SPHM_DataSet.si21remark": SPHM_DataSet.si21remark,
  "SPHM_DataSet.si22num": SPHM_DataSet.si22num,
  "SPHM_DataSet.si22per": SPHM_DataSet.si22per,
  "SPHM_DataSet.si22remark": SPHM_DataSet.si22per,
  "SPHM_DataSet.si23num": SPHM_DataSet.si23num,
  "SPHM_DataSet.si23per": SPHM_DataSet.si23per,
  "SPHM_DataSet.si23remark": SPHM_DataSet.si23remark,
  //6.3
  "SPHM_DataSet.si3numReports": SPHM_DataSet.si3numReports,
  "SPHM_DataSet.si31sat": SPHM_DataSet.si31sat,
  "SPHM_DataSet.si31per": SPHM_DataSet.si31per,
  "SPHM_DataSet.si31remark": SPHM_DataSet.si31remark,
  "SPHM_DataSet.si32sat": SPHM_DataSet.si32sat,
  "SPHM_DataSet.si32per": SPHM_DataSet.si32per,
  "SPHM_DataSet.si32remark": SPHM_DataSet.si32remark,
  "SPHM_DataSet.si33sat": SPHM_DataSet.si33sat,
  "SPHM_DataSet.si33per": SPHM_DataSet.si33per,
  "SPHM_DataSet.si33remark": SPHM_DataSet.si33remark,
  "SPHM_DataSet.si34sat": SPHM_DataSet.si34sat,
  "SPHM_DataSet.si34per": SPHM_DataSet.si34per,
  "SPHM_DataSet.si34remark": SPHM_DataSet.si34remark,
  "SPHM_DataSet.si35sat": SPHM_DataSet.si35sat,
  "SPHM_DataSet.si35per": SPHM_DataSet.si35per,
  "SPHM_DataSet.si35remark": SPHM_DataSet.si35remark,
//6.4
  "SPHM_DataSet.si41YN": SPHM_DataSet.si41YN,
  "SPHM_DataSet.si41": SPHM_DataSet.si41,
  "SPHM_DataSet.si42YN": SPHM_DataSet.si42YN,
  "SPHM_DataSet.si42": SPHM_DataSet.si42,
  "SPHM_DataSet.si43YN": SPHM_DataSet.si43YN,
  "SPHM_DataSet.si43": SPHM_DataSet.si43,
  "SPHM_DataSet.si44YN": SPHM_DataSet.si44YN,
  "SPHM_DataSet.si44": SPHM_DataSet.si44,
//7.
  "SPHM_DataSet.s1YN": SPHM_DataSet.s1YN,
  "SPHM_DataSet.s1": SPHM_DataSet.s1,
  "SPHM_DataSet.s2YN": SPHM_DataSet.s2YN,
  "SPHM_DataSet.s2": SPHM_DataSet.s2,
  "SPHM_DataSet.s3YN": SPHM_DataSet.s3YN,
  "SPHM_DataSet.s3": SPHM_DataSet.s3,
  "SPHM_DataSet.s4YN": SPHM_DataSet.s4YN,
  "SPHM_DataSet.s4": SPHM_DataSet.s4,
  "SPHM_DataSet.s5YN": SPHM_DataSet.s5YN,
  "SPHM_DataSet.s5": SPHM_DataSet.s5,
  "SPHM_DataSet.s6YN": SPHM_DataSet.s6YN,
  "SPHM_DataSet.s6": SPHM_DataSet.s6,
  "SPHM_DataSet.s7YN": SPHM_DataSet.s7YN,
  "SPHM_DataSet.s7": SPHM_DataSet.s7,
//8.
  "SPHM_DataSet.e1YN": SPHM_DataSet.e1YN,
  "SPHM_DataSet.e1": SPHM_DataSet.e1,
  "SPHM_DataSet.e2YN": SPHM_DataSet.e2YN,
  "SPHM_DataSet.e2": SPHM_DataSet.e2,
//9.
  "SPHM_DataSet.n1a": SPHM_DataSet.n1a,
  "SPHM_DataSet.n1b": SPHM_DataSet.n1b,
  "SPHM_DataSet.n2": SPHM_DataSet.n2,
  "SPHM_DataSet.n3": SPHM_DataSet.n3,
  "SPHM_DataSet.n4": SPHM_DataSet.n4,
  "SPHM_DataSet.n5": SPHM_DataSet.n5,
//10.
  "SPHM_DataSet.t1": SPHM_DataSet.t1,
  "SPHM_DataSet.t2": SPHM_DataSet.t2,
//11.
  "SPHM_DataSet.el1": SPHM_DataSet.el1,
  "SPHM_DataSet.el2": SPHM_DataSet.el2,
  "SPHM_DataSet.el3": SPHM_DataSet.el3,
  "SPHM_DataSet.el4": SPHM_DataSet.el4,
  "SPHM_DataSet.el5": SPHM_DataSet.el5,
  "SPHM_DataSet.el6": SPHM_DataSet.el6,
//12.
  "SPHM_DataSet.designation1": SPHM_DataSet.designation1,
};

//
// 6
// void change1(List variables) {
//   si1num = variables[0];
//   si1per = variables[1];
//   si1remark = variables[2];
// }

// void change2(List variables) {
//   si2num = variables[0];
//   si2per = variables[1];
//   si2remark = variables[2];
// }

// void change3(List variables) {
//   si3num = variables[0];
//   si3per = variables[1];
//   si3remark = variables[2];
// }

// void change4(List variables) {
//   si4num = variables[0];
//   si4per = variables[1];
//   si4remark = variables[2];
// }