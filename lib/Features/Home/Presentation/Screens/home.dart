// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<String> genres = [
//       "Action",
//       "Drama",
//       "Adventure",
//       "Fantasy",
//       "Sci-Fi",
//       "Mystery",
//       "Horror",
//       "Comedy",
//       "Romance",
//     ];
//     return Scaffold(
//       body: SizedBox(
//         height: 400.h,
//         width: double.infinity,
//         child: Stack(
//           fit: StackFit.expand,
//           children: [
//             //background image
//             Image.asset("assets/aot.png", fit: BoxFit.cover),
//             Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   stops: [0.8, 1.0],
//                   colors: [Colors.transparent, AppColors.background],
//                 ),
//               ),
//             ),
//             //menu and profile icon
//             TopBar(),
//             //anime categories and buttons
//             MiddleBar(genres: genres),
//           ],
//         ),
//       ),
//     );
//   }
// }
