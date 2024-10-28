import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/constants/app_text_styles.dart';
import '../../../core/model/GameModel.dart';
import '../../../core/shared_pref/provider_lang.dart';
import '../../game_detail/game_detail.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.game});
  final Game game;
  @override
  Widget build(BuildContext context) {
    final currentLocal = context.read<LangProvider>().getLang();
    final isRtl = isCurrentLocaleRtl(currentLocal);

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 7,
      ),
      height: 170.0,
      child: InkWell(
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GameDetail(
                game: game,
              ),
            ),
          ),
        },
        child: Stack(
          alignment: isRtl ? Alignment.bottomRight : Alignment.bottomLeft,
          children: [
            Container(
              height: 160.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: isRtl ? 0.0 : null,
              right: isRtl ? null : 0.0,
              child: SizedBox(
                //padding: const EdgeInsets.symmetric(horizontal: 17),
                height: 170.0,
                width: 170.0,
                child: game.image.isNotEmpty
                    ? Image.asset(
                        game.image,
                        fit: BoxFit.contain,
                      )
                    : Image.asset("assets/images/game1.png"),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: isRtl ? 0.0 : null,
              left: isRtl ? null : 0.0,
              child: SizedBox(
                height: 160.0,
                //width: size.width - 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        game.name,
                        style: AppTextStyles.h4,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        game.tools[0],
                        style: AppTextStyles.caption,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30, // 30 px padding
                          vertical: 5, // 5 px padding
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: const Text('تفاصيل اللعبة').tr(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isCurrentLocaleRtl(currentLocal) {
    //final String currentLocale = Intl.getCurrentLocale();
    return Bidi.isRtlLanguage(currentLocal.toString());
  }
}
