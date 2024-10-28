import 'package:flutter/material.dart';

class GameImage extends StatelessWidget {
  const GameImage({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Center(
            child: Image.asset(
              image,
              height: size.width * 0.55,
              width: size.width * 0.55,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
