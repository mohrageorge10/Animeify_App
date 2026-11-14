import 'package:animeify/Core/Constants/app_images.dart';
import 'package:animeify/Core/Constants/app_lists.dart';
import 'package:animeify/Core/Constants/app_strings.dart';
import 'package:animeify/Features/Anime/Presentation/Screens/Widgets/anime_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimePage extends StatelessWidget {
  const AnimePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(height: 10.h),
            // Categories Row
            SizedBox(
              height: 25.h,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.sort_down, size: 24.sp),
                  ),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey[800]!),
                            image: DecorationImage(
                              image: AssetImage(AppImages.aot1),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withValues(alpha: 0.4),
                                BlendMode.darken,
                              ),
                            ),
                          ),
                          child: Text(
                            AppLists.categories[index],
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                      itemCount: AppLists.categories.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(width: 8.w),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Tab Bar
            TabBar(
              labelColor: Color(0xFF4A80B4),
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: Color(0xFFEDF4F9),
                border: Border.all(color: Color(0xFF4A80B4), width: 2),
              ),
              tabs: [
                Tab(text: AppStrings.series),
                Tab(text: AppStrings.movies),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Series Tab
                  AnimeGridView(episodes: AppLists.episodes, titles: AppLists.titles),
                  // Movies Tab
                  AnimeGridView(episodes: AppLists.movies, titles: AppLists.titles),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
