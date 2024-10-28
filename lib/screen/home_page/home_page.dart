import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fun_and_therapy/config/constants/app_text_styles.dart';
import 'package:fun_and_therapy/core/shared_pref/provider_lang.dart';
import 'package:provider/provider.dart';

import 'home_widgets/homepage_body.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () async {
              if (context.locale.toString() == "ar") {
                await context.read<LangProvider>().setLang("en", context);
              } else {
                await context.read<LangProvider>().setLang("ar", context);
              }
            },
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.teal,
        title: Text(
          "قائمة الالعاب".tr(),
          style: AppTextStyles.h2,
        ),
        centerTitle: true,
      ),
      body: const HomePageBody(),
    );
  }
}
