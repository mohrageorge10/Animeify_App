import 'package:animeify/Features/Anime/Presentation/Screens/anime_page.dart';
// import 'package:animeify/Features/Home/Presentation/Screens/home_page.dart';
import 'package:animeify/Features/News/Presentation/Screens/Widgets/news_page.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        // HomePage(),
        AnimePage(),
        NewsPage(),
        Center(child: Text('Profile Content')),
      ],
    );
  }
}
