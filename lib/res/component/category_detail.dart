import 'package:flutter/material.dart';

import '../colors/color.dart';

class CategoryItem extends StatelessWidget {
  final String imageName;
  final String categoryName;
  final VoidCallback onTap;

  CategoryItem({
    required this.imageName,
    required this.categoryName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 120,
        decoration: BoxDecoration(
          color: AppColors.iconBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/$imageName.png", height: 80),
            SizedBox(height: 5),
            Text(
              categoryName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}