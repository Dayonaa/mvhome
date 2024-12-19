import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mvhome/app_bindings.dart';
import 'package:mvhome/middlewares/auth_middleware.dart';
import 'package:mvhome/pages/dashboard/navigation/navigation.dart';
import 'package:mvhome/pages/dashboard/navigation/navigation_controller.dart';
import 'package:mvhome/pages/login/login.dart';
import 'package:mvhome/pages/login/login_controller.dart';
import 'package:mvhome/pages/onboard/onboard.dart';
import 'package:mvhome/pages/register/register.dart';
import 'package:mvhome/pages/register/register_controller.dart';
import 'package:mvhome/res/app_translations.dart';
import 'package:mvhome/widgets/extension_widget.dart';
import 'package:mvhome/widgets/normal_scaffold.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await dotenv.load(fileName: ".env");
  await GetStorage.init();
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
      translations: AppTranslations(),
      locale: Locale('id', 'ID'),
      fallbackLocale: Locale('id', 'ID'),
      //  locale: Locale('en', 'US'),
      // fallbackLocale: Locale('en', 'US'),
      initialBinding: AppBindings(),
      getPages: [
        GetPage(
            name: '/',
            transition: Transition.cupertino,
            page: () => Navigation(),
            binding: NavigationBinding(),
            middlewares: [
              AuthMiddleware(),
            ]),
        GetPage(
          name: '/onboard',
          transition: Transition.cupertino,
          page: () => Onboard(),
        ),
        GetPage(
          name: '/login',
          transition: Transition.cupertino,
          page: () => Login(),
          binding: LoginBindings(),
        ),
        GetPage(
          name: '/register',
          transition: Transition.cupertino,
          page: () => Register(),
          binding: RegisterBindings(),
        ),
      ],
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NormalScaffold(
        child: Center(
      child: "WKKWKW".toTitleLarge(),
    ));
  }
}
