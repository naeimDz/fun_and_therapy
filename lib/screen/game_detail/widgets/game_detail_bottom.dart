import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/constants/app_text_styles.dart';
import '../../../core/model/GameModel.dart';
import '../../../core/shared_pref/provider_lang.dart';

class GameDetailBottom extends StatelessWidget {
  const GameDetailBottom({super.key, required this.game});
  final Game game;
  @override
  Widget build(BuildContext context) {
    final currentLocal = context.read<LangProvider>().getLang();
    isCurrentLocaleRtl(currentLocal);
    return Container(
      //height: 650,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 17),
          Text(
            game.name,
            style: AppTextStyles.h2,
          ),
          const Divider(
            height: 10,
            color: Colors.grey,
          ),
          const SizedBox(height: 17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "الأدوات المستعملة".tr(),
                style: AppTextStyles.h3,
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(game.tools.length,
                      (index) => Text("- ${game.tools[index]}"))),
            ],
          ),
          const Divider(
            height: 17,
            color: Colors.grey,
          ),
          const SizedBox(height: 17),
          Text(
            "شرح اللعبة".tr(),
            style: AppTextStyles.h2,
          ),
          Text(game.description),
          const Divider(
            height: 17,
            color: Colors.grey,
          ),
          Text(
            "الأهداف المرتبطة".tr(),
            style: AppTextStyles.h2,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(game.purpose.length,
                  (index) => Text("- ${game.purpose[index]}"))),
        ],
      ),
    );
  }
}

bool isCurrentLocaleRtl(currentLocal) {
  //final String currentLocale = Intl.getCurrentLocale();
  return Bidi.isRtlLanguage(currentLocal.toString());
}
