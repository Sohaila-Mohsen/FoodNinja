import 'package:flutter/material.dart';

class CardLogoText extends StatelessWidget {
  final String? cardTtext;
  final String? imagePath;
  const CardLogoText(
      {required this.cardTtext, required this.imagePath, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      width: (MediaQuery.of(context).size.width - 5) / 3,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(2, 2),
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(5, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath!),
          SizedBox(width: 10),
          Text(
            cardTtext!,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
