import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../style/app_colors.dart';

class Logo extends StatelessWidget {
  final double? size;
  const Logo({ this.size = 200, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/Logo.png", height: size, width: size),
        const SizedBox(
          height: 7,
        ),
        GradientText(
          "FoodNinja",
          style: const TextStyle(fontFamily: "Voga", fontSize: 40),
          colors: [mainColorLigtht, mainColorDark],
        ),
        const Text(
          "Deliever Favorite Food",
          style: TextStyle(
              fontSize: 13, fontFamily: "Inter", fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
