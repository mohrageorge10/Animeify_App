import 'package:animeify/Core/Widgets/custom_app_bar.dart';
import 'package:animeify/Core/Widgets/custom_drawer.dart';
import 'package:animeify/Core/Widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CustomAppBar(),
        drawer: CustomDrawer(),
        body: const CustomTabBar(),
      ),
    );
  }
}
