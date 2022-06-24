import 'package:get_storage/get_storage.dart';

class AppSharedPreference {
  static final _getStorage = GetStorage();

  static const _userName = 'user_name';

  static Future<void> setUserName(String userName) async =>
      _getStorage.write(_userName, userName);

  static String? get userName => _getStorage.read(_userName);

  static Future<void> clear() async => _getStorage.erase();
}
