import 'package:app_kanu_delivery/app/utils/i18n/localization_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  Map<String, String> _localizationsStrings;

  Future<bool> load() async {
    String jsonString =
        await rootBundle.loadString('lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizationsStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  String translate(String key) {
    return _localizationsStrings[key];
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocatizationsDelegate();
}
