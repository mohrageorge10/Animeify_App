import 'package:animeify/Core/Constants/app_colors.dart';
import 'package:animeify/Core/Constants/app_images.dart';
import 'package:animeify/Core/Constants/app_strings.dart';
import 'package:animeify/Core/Widgets/animeify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  // AppBar size
  Size get preferredSize => Size.fromHeight(80.h);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      title: Animeify(txtSize: 16.sp),
      centerTitle: false,
      titleSpacing: 0.w,
      leadingWidth: 40.w,
      actions: [
        IconButton(
          icon: Icon(Icons.search, size: 24.sp),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.notifications_none, size: 24.sp),
          onPressed: () {},
        ),
        SizedBox(width: 5.w),
        InkWell(
          onTap: () {},
          child: CircleAvatar(
            radius: 20.r,
            backgroundImage: AssetImage(AppImages.profile),
          ),
        ),
        SizedBox(width: 10.w),
      ],
      bottom: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorColor: Colors.white,
        tabAlignment: TabAlignment.center,
        labelStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        tabs: [
          Tab(text: AppStrings.homeTitle),
          Tab(text: AppStrings.animeTitle),
          Tab(text: AppStrings.newsTitle),
          Tab(text: AppStrings.discoverTitle),
        ],
      ),
    );
  }
}
