import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:mvhome/pages/dashboard/navigation/navigation.dart';
import 'package:mvhome/pages/dashboard/navigation/navigation_controller.dart';
import 'package:mvhome/pages/onboard/onboard.dart';
import 'package:mvhome/pages/onboard/onboard_controller.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MvHomeApp());
}

class MvHomeApp extends StatelessWidget {
  const MvHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Inter'),
      initialRoute: '/',
      defaultTransition: Transition.native,
      // translations: MyTranslations(),
      // locale: Locale('pt', 'BR'),
      getPages: [
        GetPage(
          name: '/',
          transition: Transition.cupertino,
          page: () => Navigation(),
          binding: NavigationBinding(),
        ),
        GetPage(
          name: '/onboard',
          transition: Transition.cupertino,
          page: () => Onboard(),
          binding: OnboardBindings(),
        ),
      ],
    );
  }
}
