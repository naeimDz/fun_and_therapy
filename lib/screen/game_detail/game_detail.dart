import 'package:flutter/material.dart';
import 'package:fun_and_therapy/screen/game_detail/widgets/game_detail_appbar.dart';

import '../../core/model/GameModel.dart';
import 'widgets/game_detail_bottom.dart';
import 'widgets/game_detail_top.dart';

class GameDetail extends StatelessWidget {
  const GameDetail({super.key, required this.game});
  final Game game;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: detailsAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
             GameDetailTop(image:game.image),
            GameDetailBottom(
              game: game,
            ),
          ],
        ),
      ),
    );
  }
}
