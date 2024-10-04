import 'package:flutter/material.dart';
import 'package:shopinow/config/constants/app_colors.dart';
import 'package:shopinow/config/constants/app_texts.dart';
import 'package:shopinow/config/routes/app_routes.dart';

import 'views/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTexts.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'GeneralSans',
          scaffoldBackgroundColor: AppColors.primary000),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const MyHomeScreen(),
        // AppRoutes.productDetail: (context) => ProductDetailScreen(),
      },
    );
  }
}
