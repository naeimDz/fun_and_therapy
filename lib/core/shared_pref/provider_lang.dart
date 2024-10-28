import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LangProvider with ChangeNotifier {
  String _lang = "en";

  setLang(String lang, BuildContext context) {
    _lang = lang;
    context.setLocale(Locale(lang));
    notifyListeners();
  }

  getLang() {
    return Locale(_lang);
  }
}
