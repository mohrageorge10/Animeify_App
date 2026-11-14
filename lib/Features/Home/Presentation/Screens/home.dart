import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otaku_hub/Core/Utils/app_colors.dart';
import 'package:otaku_hub/Presentation/Widgets/HomePage/middle_bar.dart';
import 'package:otaku_hub/Presentation/Widgets/HomePage/top_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Action",
      "Drama",
      "Adventure",
      "Fantasy",
      "Sci-Fi",
      "Mystery",
      "Horror",
      "Comedy",
      "Romance",
    ];
    return Scaffold(
      body: Container(
        height: 400.h,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            //background image
            Image.asset("assets/aot.png", fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.8, 1.0],
                  colors: [Colors.transparent, AppColors.background],
                ),
              ),
            ),
            //menu and profile icon
            TopBar(),
            //anime categories and buttons
            MiddleBar(genres: genres),
          ],
        ),
      ),
    );
  }
}
