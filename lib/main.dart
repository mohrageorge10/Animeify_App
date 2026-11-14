import 'package:animeify/Core/Routing/app_router.dart';
import 'package:animeify/Core/Routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil for responsive design
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Animeify',

          // Set the default locale to Arabic (Egypt)
          locale: Locale('ar', 'EG'),
          supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          // App theme
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
            ),
          ),

          // Set the initial route to the splash screen
          initialRoute: AppRoutes.splash,
          onGenerateRoute: AppRouter().generateRoute,
        );
      },
    );
  }
}
