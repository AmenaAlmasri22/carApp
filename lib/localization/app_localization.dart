import 'package:amena_s_application4/core/utils/navigator_service.dart';
import 'package:amena_s_application4/localization/en_us/en_us_translations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


extension LocalizationExtension on String {
  String get tr => AppLocalization.of().getString(this);
}

// ignore_for_file: must_be_immutable
class AppLocalization {
  AppLocalization(this.locale);
  Locale locale;

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': enUs,
  };
   
  static AppLocalization of() {
    final context = NavigatorService.navigatorKey.currentContext;
    if (context != null) {
      return Localizations.of<AppLocalization>(
          NavigatorService.navigatorKey.currentContext!, AppLocalization)!;
    } else {
      throw Exception('Context is null');
    }
  }

  static List<String> languages() => _localizedValues.keys.toList();

  String getString(String text) {
    return _localizedValues[locale.languageCode]?[text] ?? text;
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppLocalization.languages().contains(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture<AppLocalization>(AppLocalization(locale));
  }

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;
}
