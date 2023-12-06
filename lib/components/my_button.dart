import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String imageTitle;

  final VoidCallback? onPressed;
  final Widget? widgetToShow;

  const MyButton({
    Key? key,
    required this.imageTitle,
    this.onPressed,
    this.widgetToShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            imageTitle,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
