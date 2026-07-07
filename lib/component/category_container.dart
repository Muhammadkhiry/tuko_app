import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryContainer extends StatelessWidget {
  String? category;
  Color? color;
  VoidCallback onTap;
  CategoryContainer({
    super.key,
    required this.category,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 75,
        color: color!,
        child: Text(
          category!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
