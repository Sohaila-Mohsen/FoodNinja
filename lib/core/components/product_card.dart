import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String? cardText;
  final String? imagePath;
  final String? cardDeliveryTime;
  const ProductCard(
      {required this.cardText,
      required this.imagePath,
      required this.cardDeliveryTime,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: (MediaQuery.of(context).size.width - 70) / 2,
      height: 184,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 208, 208, 208).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(2, 2),
          ),
          BoxShadow(
            color: const Color.fromARGB(255, 204, 204, 204).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(5, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath!,
            height: 100,
          ),
          const SizedBox(height: 15),
          Text(
            cardText!,
            style: const TextStyle(
                fontSize: 16,
                fontFamily: "BentonSans",
                fontWeight: FontWeight.w700),
          ),
          Text(
            cardDeliveryTime!,
            style: const TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
