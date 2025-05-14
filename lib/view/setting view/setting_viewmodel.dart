import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class SettingViewmodel extends BaseViewModel {
  // final LangService _langService = locator<LangService>();
  // final ThemeManager _themeManager = locator<ThemeManager>();
  // final NavigationService _navigationService = locator<NavigationService>();
  bool value = false;

  // bool get isDarkTheme => _themeManager.isDarkTheme;
  // ThemeColors get themeColors => ThemeService.getThemeColors(isDarkTheme);

  // toggletheme() {
  //   _themeManager.toggleTheme();
  //   notifyListeners();
  // }

  // navigateTohomeview() {
  //   _navigationService.navigateToHomeView();
  // }

  late language selectedLanguage;

  // SettingViewmodel() {
  //   _initializeSelectedLanguage();
  // }

  // Initialize the selectedLanguage based on the current locale
  // void _initializeSelectedLanguage() {
  //   selectedLanguage = language.values.firstWhere((lang) {
  //     switch (lang) {
  //       case language.English:
  //         return _langService.locale.languageCode == 'en';
  //       case language.Arabic:
  //         return _langService.locale.languageCode == 'ar';
  //       case language.Hindi:
  //         return _langService.locale.languageCode == 'hi';
  //       case language.Spanish:
  //         return _langService.locale.languageCode == 'es';
  //       case language.Urdu:
  //         return _langService.locale.languageCode == 'ur';
  //       // default:
  //       // return false;
  //     }
  //   });
  // }

  // setLanguage(language lang) async {
  //   selectedLanguage = lang;
  //   String langCode;
  //   switch (lang) {
  //     case language.English:
  //       langCode = 'en';
  //     case language.Arabic:
  //       langCode = 'ar';
  //     case language.Hindi:
  //       langCode = 'hi';
  //     case language.Spanish:
  //       langCode = 'es';
  //     case language.Urdu:
  //       langCode = 'ur';
  //       // default:
  //       //   langCode = 'en';
  //       break;
  //   }
  //   _langService.setLocale(Locale(langCode));
  //   print(langCode);
  //   notifyListeners();
  //   rebuildUi();
  // }

  // Locale get locale => _langService.locale;

  List<DropdownMenuItem<language>> get languageItems => [
    DropdownMenuItem(value: language.English, child: Text("English")),
    DropdownMenuItem(value: language.Arabic, child: Text('Arabic')),
    DropdownMenuItem(value: language.Spanish, child: Text('Spanish')),
    DropdownMenuItem(value: language.Hindi, child: Text('Hindi')),
    DropdownMenuItem(value: language.Urdu, child: Text('Urdu')),
  ];
}

enum language { English, Arabic, Spanish, Hindi, Urdu }
