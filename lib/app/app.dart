import 'dart:ui' as ui;

import 'package:contact/app/routes/app_pages.dart';
import 'package:contact/generated/locales.g.dart';
import 'package:contact/resouces/theme.dart';
import 'package:flutter/material.dart' hide Theme;
import 'package:get/get.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translationsKeys: AppTranslation.translations,
      locale: ui.window.locale,
      fallbackLocale: Locale('en'),
      supportedLocales: [
        Locale('en'),
      ],
      title: LocaleKeys.app_name.tr,
      theme: Theme.basic,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
    );
  }
}
