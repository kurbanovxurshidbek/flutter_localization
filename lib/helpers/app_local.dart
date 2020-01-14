import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppLocal{

  static var path =  'assets/locals';
  static var locales = [Locale('en', 'US'), Locale('ko', 'KO')];

  static String get(BuildContext context,String key){
    return AppLocalizations.of(context).tr(key);
  }

  static change(BuildContext context,String languageCode, String countryCode){
    var data = EasyLocalizationProvider.of(context).data;
    data.changeLocale(Locale(languageCode,countryCode));
  }

}