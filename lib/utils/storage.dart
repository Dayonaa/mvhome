import 'package:get_storage/get_storage.dart';

class Storage {
  static final GetStorage _box = GetStorage();
  static String? readToken() {
    return _box.read<String>("token");
  }

  static bool hasSkipOnboard() {
    return _box.read<bool>("skip_onboard") ?? false;
  }

  static Future<void> writeToken(String? token) async {
    await _box.write("token", token);
  }

  static Future<void> writeSkipOnboard() async {
    await _box.write("skip_onboard", true);
  }
}
