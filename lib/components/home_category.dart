import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key, required this.text, required this.color, required this.onTap});
  
  final String text;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(20),
            color: color,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
    );
  }
}