import 'package:get/get.dart';
import 'package:mvhome/pages/onboard/onboard_controller.dart';
import 'package:mvhome/services/auth_services.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardController());
    Get.lazyPut(() => AuthService());
  }
}
