import 'package:flutter/material.dart';
import 'package:project/app_tree/data/ProfileSettings/settings_class.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/ProfileSettings/user_preferences.dart';

final preferencesService = PreferencesService();
final firstRunController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final user_nameController = TextEditingController();
  final passwordController = TextEditingController();
  final additionalInfoController = TextEditingController();

  //saving data function
void saveSettings() {
    final newSettings = Settings(
        firstRunController.text,
        nameController.text,
        emailController.text,
        user_nameController.text,
        passwordController.text,
        additionalInfoController.text);
    //
    preferencesService.saveSettings(newSettings);
  }