import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/data/services/theme_services.dart';
import 'app/routes/app_pages.dart';
import 'app/modules/layout/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      themeMode: ThemeServices().theme,
      theme: Themes.light,
      darkTheme: Themes.dark,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}