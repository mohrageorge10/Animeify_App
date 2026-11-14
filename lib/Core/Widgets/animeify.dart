import 'package:animeify/Core/Constants/app_colors.dart';
import 'package:flutter/material.dart';

class Animeify extends StatelessWidget {
  const Animeify({super.key, required this.txtSize});
  final double txtSize;
  @override
  Widget build(BuildContext context) {
    double logoSize = txtSize + 20;
    return SizedBox(
      width: logoSize + (txtSize * 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'nimeify',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: txtSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset("assets/logo.png", height: logoSize),
        ],
      ),
    );
  }
}
