import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fun_and_therapy/core/shared_pref/provider_lang.dart';
import 'package:provider/provider.dart';
import 'config/themes/theme_constants.dart';
import 'screen/home_page/home_page.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider(
    create: (_) => LangProvider(),
    child: EasyLocalization(
      path: 'assets/lang',
      supportedLocales: const [Locale('ar'), Locale('en')],
      fallbackLocale: const Locale('en'),
      useOnlyLangCode: true,
      useFallbackTranslations: true,
      startLocale: const Locale('en'),
      child: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.read<LangProvider>().getLang(),
      title: 'Fun & Therapy'.tr(),
      theme: AppTheme.lightTheme,
      home: const MyHomePage(),
    );
  }
}
