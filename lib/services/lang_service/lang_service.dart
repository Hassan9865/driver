import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class LangService with ListenableServiceMixin {
  Locale _locale = Locale('en');

  final _localeController = StreamController<Locale>.broadcast();
  Stream<Locale> get localeStream => _localeController.stream;

  Locale get locale => _locale;

  setLocale(Locale newLocale) {
    if (_locale != newLocale) {
      _locale = newLocale;
      _localeController.add(_locale);
      notifyListeners();
    }
  }

  void dispose() {
    _localeController.close();
  }
}
