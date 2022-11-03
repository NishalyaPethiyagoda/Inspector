import 'package:project/app_tree/data/ProfileSettings/settings_class.dart';
import 'package:shared_preferences/shared_preferences.dart';


class PreferencesService {
  //
  Future saveSettings(Settings settings) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('isFirstrun', settings.isFirstrun);
    await preferences.setString('name', settings.name);
    await preferences.setString('user name', settings.userName);
    await preferences.setString('email', settings.email);
    await preferences.setString('password', settings.password);
    await preferences.setString('additionalInfo', settings.additionalInfo);
  }

  Future<Settings> getSettings() async {
    final preferences = await SharedPreferences.getInstance();
    final isFirstrun = (preferences.getString('isFirstrun') ?? '');
    final name = (preferences.getString('name') ?? '');
    final userName = (preferences.getString('user name') ?? '');
    final email = (preferences.getString('email') ?? '');
    final password = (preferences.getString('password') ?? '');
    final additionalInfo = (preferences.getString('additionalInfo') ?? '');
    
    return Settings(isFirstrun, name, email, userName, password, additionalInfo);
  }
  //
}
