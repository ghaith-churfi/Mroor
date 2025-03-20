import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:traffic_app/view/splashScreen_view/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //  await initservices();
  // sharedPreferences = await SharedPreferences.getInstance();
  // Get.put(ThemeController());
  runApp(const Main());
}

// SharedPreferences? sharedtheme;
// SharedPreferences? sharedPreferences;
// // Future initservices() async {
//   await Get.putAsync<Servicessettings>(() => Servicessettings().init());
// }

// ignore: must_be_immutable
class Main extends StatelessWidget {
  // LocaleController controller = Get.put(LocaleController());
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: Get.find<ThemeController>().currentTheme,
      // locale: controller.initlocale,
      // translations: MyLocale(),
      getPages: [
        GetPage(
          name: "/",
          page: () => const Scaffold(body: SplashScreen()),
        )
      ],
    );
  }
}
