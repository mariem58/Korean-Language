import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.text, required this.imagePath});

  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            imagePath,
            width: 150,
            height: 200,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 150,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
