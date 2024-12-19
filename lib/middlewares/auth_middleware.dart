import 'package:flutter/cupertino.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:mvhome/services/auth_services.dart';
import 'package:mvhome/utils/storage.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (Storage.readToken() != null) {
      final AuthService service = Get.find();
      service.refreshToken().then((v) {
        FlutterNativeSplash.remove();
      });
      return null;
    }
    if (!Storage.hasSkipOnboard()) {
      FlutterNativeSplash.remove();
      return RouteSettings(name: '/onboard');
    }
    FlutterNativeSplash.remove();
    return RouteSettings(name: '/login');
  }

  @override
  int? get priority => 1;
}
