import 'package:flutter/material.dart';

class Item_Food extends StatelessWidget {
  const Item_Food({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.link,
    required this.onPressed,
  }) : super(key: key);
  final VoidCallback? onPressed;
  final String title;
  final String subtitle;
  final String link;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Material(
        // Add any Material-specific properties if needed
        child: Container(
          margin: const EdgeInsets.all(
              5.0), // Set the margin to 16 pixels on all sides
          color: Color.fromARGB(
              255, 202, 76, 95), // Set your desired background color here
          child: ListTile(
            leading: Image.asset(
              link,
              height: 40,
              width: 40,
            ),
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        ),
      ),
    );
  }
}
