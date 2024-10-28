import 'package:flutter/material.dart';
import 'package:fun_and_therapy/screen/game_detail/widgets/game_image.dart';

class GameDetailTop extends StatelessWidget {
  const GameDetailTop({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Center(
        child: GameImage(
          size: MediaQuery.of(context).size,
          image: image,
        ),
      ),
    );
  }
}
