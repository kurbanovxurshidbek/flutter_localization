import 'package:flutter/material.dart';
import 'package:flutter_localization/pages/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

import 'helpers/app_local.dart';

void main() => runApp(EasyLocalization(child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    return EasyLocalizationProvider(
      data: data,
      child: MaterialApp(
        home: HomePage(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          EasylocaLizationDelegate(locale: data.locale, path: AppLocal.path),
        ],
        supportedLocales: AppLocal.locales,
        locale: data.savedLocale,
      ),
    );
  }
}
