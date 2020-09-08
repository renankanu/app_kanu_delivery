import 'package:app_kanu_delivery/app/utils/i18n/app_localizations.dart';
import 'package:flutter/material.dart';

class AppLocatizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocatizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    throw ['pt', 'en'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations appLocalizations = AppLocalizations(locale);
    await appLocalizations.load();
    return appLocalizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
